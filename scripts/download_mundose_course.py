#!/usr/bin/env python3
import argparse
import html
import os
import re
import shutil
import subprocess
import sys
import time
import urllib.error
import urllib.parse
import urllib.request
from pathlib import Path


BASE_URL = "https://edu.mundose.com"
COURSE_URL = f"{BASE_URL}/course/view.php?id=222"
USER_AGENT = (
    "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 "
    "(KHTML, like Gecko) Chrome/126.0 Safari/537.36"
)


def slugify(value: str, max_len: int = 120) -> str:
    value = html.unescape(value)
    value = re.sub(r"<[^>]+>", " ", value)
    value = re.sub(r"\s+", " ", value).strip()
    value = re.sub(r'[\\/*?:"<>|]', "-", value)
    value = value.replace("\xa0", " ")
    value = re.sub(r"\s+", " ", value).strip(" .")
    return value[:max_len] or "sin-titulo"


def decode_text(value: str) -> str:
    return html.unescape(value).replace("\xa0", " ").strip()


def decode_url(url: str) -> str:
    return html.unescape(url)


class MoodleClient:
    def __init__(self, cookie_value: str):
        self.opener = urllib.request.build_opener()
        self.cookie_value = cookie_value

    def _request(self, url: str):
        req = urllib.request.Request(url)
        req.add_header("User-Agent", USER_AGENT)
        req.add_header("Cookie", f"MoodleSession={self.cookie_value}")
        return self.opener.open(req, timeout=60)

    def get_text(self, url: str) -> str:
        with self._request(url) as resp:
            charset = resp.headers.get_content_charset() or "utf-8"
            return resp.read().decode(charset, errors="replace")

    def download(self, url: str, dest: Path) -> Path:
        dest.parent.mkdir(parents=True, exist_ok=True)
        with self._request(url) as resp:
            final_url = resp.geturl()
            disposition = resp.headers.get("Content-Disposition", "")
            data = resp.read()

        filename = None
        if "filename*" in disposition:
            match = re.search(r"filename\*=UTF-8''([^;]+)", disposition, re.I)
            if match:
                filename = urllib.parse.unquote(match.group(1))
        if not filename and "filename=" in disposition:
            match = re.search(r'filename="?([^";]+)"?', disposition, re.I)
            if match:
                filename = match.group(1)
        if not filename:
            parsed = urllib.parse.urlparse(final_url)
            filename = os.path.basename(urllib.parse.unquote(parsed.path)) or dest.name

        final_dest = dest
        if dest.suffix == "" and "." in filename:
            final_dest = dest.with_name(slugify(filename))
        elif dest.name == "download":
            final_dest = dest.with_name(slugify(filename))

        final_dest.write_bytes(data)
        return final_dest


def extract_sections(course_html: str):
    starts = [m.start() for m in re.finditer(r'<li id="section-\d+"', course_html)]
    sections = []
    for idx, start in enumerate(starts):
        end = starts[idx + 1] if idx + 1 < len(starts) else len(course_html)
        chunk = course_html[start:end]
        name_match = re.search(r'data-sectionname="([^"]+)"', chunk)
        if not name_match:
            continue
        name = decode_text(name_match.group(1))
        activity_matches = re.findall(
            r'data-activityname="([^"]+)"[^>]*>.*?<a href="([^"]+)" class=" aalink stretched-link"',
            chunk,
            flags=re.S,
        )
        activities = []
        for raw_name, href in activity_matches:
            clean_name = decode_text(raw_name)
            activities.append(
                {
                    "name": clean_name,
                    "url": decode_url(href),
                    "kind": activity_kind_from_url(href),
                }
            )
        sections.append({"name": name, "activities": activities})
    return sections


def activity_kind_from_url(url: str) -> str:
    path = urllib.parse.urlparse(url).path
    parts = path.strip("/").split("/")
    if len(parts) >= 2:
        return f"{parts[0]}_{parts[1]}"
    return "other"


def extract_activity_body(html_text: str) -> str:
    match = re.search(
        r'<div role="main">(.*?)<div class="content-b pt-1">',
        html_text,
        flags=re.S,
    )
    return match.group(1).strip() if match else html_text


def extract_title(html_text: str) -> str:
    match = re.search(r'<h2 class="activity-name">(.*?)</h2>', html_text, flags=re.S)
    if match:
        return decode_text(re.sub(r"<[^>]+>", " ", match.group(1)))
    match = re.search(r"<title>(.*?)</title>", html_text, flags=re.S)
    return decode_text(match.group(1)) if match else "Actividad"


def save_html_snapshot(path: Path, title: str, body_html: str):
    doc = f"""<!doctype html>
<html lang="es">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>{html.escape(title)}</title>
  <style>
    body {{ font-family: Arial, sans-serif; margin: 2rem auto; max-width: 960px; line-height: 1.5; }}
    iframe {{ width: 100%; min-height: 540px; }}
    img, video {{ max-width: 100%; height: auto; }}
    a {{ word-break: break-word; }}
  </style>
</head>
<body>
  <h1>{html.escape(title)}</h1>
  {body_html}
</body>
</html>
"""
    path.write_text(doc, encoding="utf-8")


def extract_links(text: str, attr: str):
    pattern = rf'{attr}="([^"]+)"'
    return [decode_url(x) for x in re.findall(pattern, text, flags=re.I)]


def unique(items):
    seen = set()
    result = []
    for item in items:
        if item in seen:
            continue
        seen.add(item)
        result.append(item)
    return result


def write_lines(path: Path, lines):
    if not lines:
        return
    path.write_text("\n".join(lines) + "\n", encoding="utf-8")


def download_video_with_ytdlp(url: str, out_dir: Path) -> bool:
    if not shutil.which("yt-dlp"):
        return False
    out_dir.mkdir(parents=True, exist_ok=True)
    cmd = [
        "yt-dlp",
        "--no-progress",
        "--ignore-errors",
        "-o",
        str(out_dir / "%(title).180B [%(id)s].%(ext)s"),
        url,
    ]
    proc = subprocess.run(cmd, capture_output=True, text=True)
    return proc.returncode == 0


def download_activity(
    client: MoodleClient,
    activity: dict,
    section_dir: Path,
    index: int,
    errors: list,
    download_videos: bool,
):
    title_slug = slugify(activity["name"])
    activity_dir = section_dir / f"{index:02d} - {title_slug}"
    activity_dir.mkdir(parents=True, exist_ok=True)

    try:
        page_html = client.get_text(activity["url"])
    except Exception as exc:
        errors.append(f"No se pudo abrir {activity['url']}: {exc}")
        return

    raw_html_path = activity_dir / "original.html"
    raw_html_path.write_text(page_html, encoding="utf-8")

    body = extract_activity_body(page_html)
    resolved_title = extract_title(page_html) or activity["name"]
    save_html_snapshot(activity_dir / "contenido.html", resolved_title, body)

    hrefs = unique(extract_links(body, "href"))
    srcs = unique(extract_links(body, "src"))
    download_links = [u for u in hrefs + srcs if "pluginfile.php" in u]
    iframe_links = [u for u in srcs if any(x in u for x in ("vimeo.com", "youtube.com", "youtu.be"))]
    external_links = [
        u
        for u in hrefs + srcs
        if u.startswith("http") and "edu.mundose.com" not in u and u not in iframe_links
    ]

    downloaded = []
    for pos, file_url in enumerate(unique(download_links), start=1):
        try:
            target = activity_dir / "archivos" / f"{pos:02d}-download"
            saved = client.download(file_url, target)
            downloaded.append(saved.name)
        except Exception as exc:
            errors.append(f"No se pudo descargar {file_url}: {exc}")

    if downloaded:
        write_lines(activity_dir / "archivos_descargados.txt", downloaded)

    if iframe_links:
        write_lines(activity_dir / "videos_embebidos.txt", iframe_links)
        if download_videos:
            for video_url in iframe_links:
                ok = download_video_with_ytdlp(video_url, activity_dir / "videos")
                if not ok:
                    errors.append(f"No se pudo bajar video con yt-dlp: {video_url}")

    if external_links:
        write_lines(activity_dir / "enlaces_externos.txt", unique(external_links))


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--cookie", required=True, help="Valor de la cookie MoodleSession")
    parser.add_argument("--output", required=True, help="Ruta base de descarga")
    parser.add_argument(
        "--skip-videos",
        action="store_true",
        help="Guarda enlaces de video pero no descarga los mp4",
    )
    args = parser.parse_args()

    base_dir = Path(args.output).expanduser()
    base_dir.mkdir(parents=True, exist_ok=True)
    course_dir = base_dir / "MundosE DevOps 2503"
    course_dir.mkdir(parents=True, exist_ok=True)

    client = MoodleClient(args.cookie)
    course_html = client.get_text(COURSE_URL)
    if "Entrar al sitio" in course_html:
        print("La cookie ya no es valida.", file=sys.stderr)
        sys.exit(1)

    sections = extract_sections(course_html)
    manifest = []
    errors = []

    for idx, section in enumerate(sections, start=1):
        section_name = slugify(section["name"])
        section_dir = course_dir / f"{idx:02d} - {section_name}"
        section_dir.mkdir(parents=True, exist_ok=True)
        manifest.append(f"{idx:02d} | {section['name']} | {len(section['activities'])} actividades")
        for act_idx, activity in enumerate(section["activities"], start=1):
            print(f"[{idx:02d}/{len(sections):02d}] {activity['name']}", flush=True)
            download_activity(
                client,
                activity,
                section_dir,
                act_idx,
                errors,
                download_videos=not args.skip_videos,
            )
            time.sleep(0.2)

    write_lines(course_dir / "00-manifest.txt", manifest)
    if errors:
        write_lines(course_dir / "00-errores.txt", errors)
    print(course_dir)


if __name__ == "__main__":
    main()
