# NotebookLM MCP en Codex - Configuracion manual completa

Fecha de referencia: 2026-04-03
Objetivo: dejar `notebooklm-mcp` instalado de forma global y autenticado manualmente.

## 1) URLs oficiales

- Repositorio: https://github.com/jacob-bd/notebooklm-mcp-cli
- PyPI: https://pypi.org/project/notebooklm-mcp-cli/
- NotebookLM (app): https://notebooklm.google.com
- NotebookLM (help): https://support.google.com/notebooklm

## 2) Requisitos

- Python 3.10+ (recomendado 3.12)
- `pip` disponible
- Codex CLI con comando `codex mcp`
- Cuenta de Google con acceso a NotebookLM

Comandos de chequeo:

```bash
python3 --version
pip --version
codex mcp --help
```

## 3) Instalar notebooklm-mcp-cli (manual)

### Opcion A (recomendada en Linux moderno con PEP 668)

```bash
python3 -m pip install --user --break-system-packages notebooklm-mcp-cli
```

### Opcion B (si no aplica PEP 668)

```bash
python3 -m pip install --user notebooklm-mcp-cli
```

Verificar binarios:

```bash
ls -l ~/.local/bin/nlm
ls -l ~/.local/bin/notebooklm-mcp
```

Si `~/.local/bin` no esta en PATH, agregarlo al shell:

```bash
echo 'export PATH="$HOME/.local/bin:$PATH"' >> ~/.bashrc
source ~/.bashrc
```

## 4) Registrar MCP global en Codex

Agregar servidor MCP global (scope usuario/global):

```bash
codex mcp add notebooklm-mcp -- ~/.local/bin/notebooklm-mcp
```

Verificar:

```bash
codex mcp list
codex mcp get notebooklm-mcp
```

Debe verse algo equivalente a:

- `name: notebooklm-mcp`
- `transport: stdio`
- `command: /home/TU_USUARIO/.local/bin/notebooklm-mcp`
- `enabled: true`

## 5) Autenticacion manual (sin auto-browser)

Usar este flujo cuando `nlm login` falle por falta de navegador compatible o CDP.

### Paso 5.1 - Extraer cookies desde NotebookLM

Importante antes de copiar cookies:

- Deja activa como principal la cuenta correcta de Google.
- Idealmente usa una ventana/perfil del navegador con solo esa cuenta iniciada.
- Google suele priorizar la cuenta principal de la sesion abierta.

1. Abrir: https://notebooklm.google.com
2. Iniciar sesion con tu cuenta Google.
3. Abrir DevTools (F12) -> pestaña `Network`.
4. Recargar la pagina.
5. En filtro, escribir `batchexecute`.
6. Abrir cualquier notebook para generar requests.
7. Elegir una request `batchexecute`.
8. Ir a `Headers` -> `Request Headers`.
9. Copiar el valor completo de `cookie` (solo el valor, sin `cookie:`).

### Paso 5.2 - Guardar cookies en archivo temporal

```bash
cat > /tmp/notebooklm-cookies.txt
```

Pegar el string de cookies y cerrar con `Ctrl+D`.

Proteger permisos:

```bash
chmod 600 /tmp/notebooklm-cookies.txt
```

### Paso 5.3 - Importar cookies en perfil `default`

```bash
~/.local/bin/nlm login --manual --file /tmp/notebooklm-cookies.txt
```

### Paso 5.4 - Validar autenticacion

```bash
~/.local/bin/nlm login --check
```

Salida esperada:

- `Authentication valid!`
- `Profile: default`
- `Notebooks found: <numero>`

### Paso 5.5 - Borrar archivo temporal

```bash
rm -f /tmp/notebooklm-cookies.txt
```

## 6) Prueba rapida funcional

Comprobar que el perfil responde:

```bash
~/.local/bin/nlm notebook list
```

Comprobar que el MCP sigue registrado:

```bash
codex mcp list | rg notebooklm-mcp
```

## 7) Comandos de mantenimiento

Actualizar paquete:

```bash
python3 -m pip install --user --break-system-packages --upgrade notebooklm-mcp-cli
```

Revisar version:

```bash
~/.local/bin/nlm --help
```

Quitar MCP de Codex:

```bash
codex mcp remove notebooklm-mcp
```

## 8) Troubleshooting rapido

### Error: `No supported browser found`

Usar modo manual:

```bash
nlm login --manual --file /tmp/notebooklm-cookies.txt
```

### Error de autenticacion expirada

- Repetir extraccion de cookies en NotebookLM.
- Ejecutar nuevamente `nlm login --manual --file ...`.

### `notebooklm-mcp` no encontrado

- Verificar archivo ejecutable: `ls -l ~/.local/bin/notebooklm-mcp`
- Reinstalar paquete si falta.

### Codex no lo toma

- Confirmar con `codex mcp get notebooklm-mcp`.
- Reiniciar sesion de Codex si hace falta reconexion de MCP.

### Nlm muestra pocos o otros cuadernos distintos a la web

- Normalmente es cuenta equivocada en la sesion de Google activa.
- Repetir login manual con cookies de la cuenta correcta.
- Antes de extraer cookies, dejar esa cuenta como principal (ideal: una sola cuenta abierta en esa ventana/perfil).

## 9) Seguridad recomendada

- Nunca compartas cookies en texto plano.
- Siempre usa archivo temporal y borralo al finalizar.
- Si las cookies se expusieron, cierra sesion de Google y vuelve a iniciar para rotarlas.

---

Estado esperado final:

1. `notebooklm-mcp-cli` instalado en usuario.
2. `notebooklm-mcp` agregado globalmente en Codex.
3. `nlm login --check` valido.
4. Archivo temporal de cookies eliminado.
