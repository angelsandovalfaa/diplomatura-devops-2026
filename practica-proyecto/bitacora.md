# Bitácora DevOps

## Sesión 1
- Fecha: 2026-04-18
- Repos usados: Repo 9 (DevOps Roadmap), Repo 4 (Into the DevOps), Repo 3 (DevOps Exercises)
- Objetivo: iniciar el plan formal y dejar primera evidencia.
- Tiempo invertido: 45 min (hasta ahora)

### Actividades
- [x] Leer estructura de Repo 9 (DevOps Roadmap).
- [x] Definir stack inicial personal.
- [x] Leer estructura principal de Repo 4 (Into the DevOps).
- [ ] Resolver 3 ejercicios básicos de Repo 3.

### Evidencia
- Comandos:
  - `curl -s https://raw.githubusercontent.com/milanm/DevOps-Roadmap/master/README.md > /tmp/repo9_readme.md`
  - `rg -n '^#{1,3} ' /tmp/repo9_readme.md | head -n 80`
  - `curl -s https://raw.githubusercontent.com/NotHarshhaa/into-the-devops/master/README.md > /tmp/repo4_readme.md`
  - `rg -n '^#{1,3} ' /tmp/repo4_readme.md | head -n 120`
  - `curl -s https://raw.githubusercontent.com/bregman-arie/devops-exercises/master/README.md > /tmp/repo3_readme.md`
- Enlaces/commits:
  - https://github.com/milanm/DevOps-Roadmap
  - https://github.com/NotHarshhaa/into-the-devops
  - https://github.com/bregman-arie/devops-exercises
- Resultado:
  - Repo 9 confirma ruta de estudio: Git, lenguaje, Linux/scripting, networking/security, server mgmt, containers, orchestration, IaC, CI/CD, observabilidad, cloud y DevSecOps.
  - Repo 4 confirma stack práctico: Linux, Git, CI/CD, cloud, contenedores, monitoring/security y data.
  - Repo 3 tiene banco amplio de ejercicios para práctica diaria y entrevistas.

### Bloqueos
- Ninguno técnico. Falta completar la parte práctica de ejercicios hoy.

### Aprendizajes
- La secuencia correcta es primero base (Linux/Git/Docker), luego automatización (CI/CD), después plataforma (K8s/IaC), y recién después especializaciones.

### Próximo paso
- Resolver 3 ejercicios de inicio en Repo 3: Linux básico, Git básico y Docker básico.

---

## Stack Inicial Definido

- Cloud: AWS
- Contenedores: Docker
- CI/CD: GitHub Actions
- Orquestación: Kubernetes
- IaC: Terraform
- Observabilidad: Prometheus + Grafana

---

## Semana 1 - Backlog

- [ ] Día 1: ruta + 3 ejercicios base
- [ ] Día 2: 5-8 ejercicios Linux/Git
- [ ] Día 3: Docker básico + contenedor simple
- [ ] Día 4: workflow CI/CD mínimo
- [ ] Día 5: retrospectiva y plan semana 2
