# Proyecto Integrador Final (Ejemplo)

## Objetivo general

Integrar los contenidos vistos sobre CircleCI en un proyecto practico que combine automatizacion CI/CD, contenedores, seguridad, despliegue y observabilidad, aplicando buenas practicas de trazabilidad, modularidad y entrega continua.

## Consigna

Desarrollar en equipo un proyecto practico basado en una aplicacion simple generada con IA o creada por el grupo, versionada en GitHub. El objetivo es construir un pipeline completo en CircleCI que automatice validaciones, empaquetado y despliegue, incorporando criterios de calidad, reutilizacion y visibilidad operativa.

La entrega final debe mostrar que el equipo puede disenar un flujo de trabajo claro y mantenible en CircleCI, aprovechando:

- `config.yml` bien estructurado.
- Jobs separados por responsabilidad.
- Reutilizacion con `commands` y/o `orbs`.
- Cache de dependencias.
- Ejecucion paralela cuando tenga sentido.
- Integracion con contenedores y una estrategia de despliegue.
- Controles de seguridad y evidencia de observabilidad.

## Proyecto propuesto

### Proyecto: Pipeline CI/CD con CircleCI + Docker + despliegue controlado

#### Objetivo

Construir un pipeline en CircleCI que:

1. Obtenga el codigo desde un repositorio conectado.
2. Ejecute validaciones iniciales de formato o lint.
3. Corra tests automatizados.
4. Construya una imagen Docker reproducible.
5. Publique la imagen en un registry.
6. Ejecute un despliegue controlado en un entorno local o cloud.
7. Genere evidencia de seguridad y monitoreo basico.

#### Herramientas

- CI/CD: CircleCI
- Versionado: GitHub
- Contenedores: Docker
- Registry: Docker Hub o GitHub Container Registry
- Seguridad: Trivy, Hadolint o similar
- Observabilidad: Prometheus + Grafana, o dashboard equivalente del entorno elegido

## Entregables

Presentar un archivo comprimido (`.zip` o `.tar.gz`) con los siguientes elementos:

- Archivo `.circleci/config.yml` funcional y documentado.
- `Dockerfile` de la aplicacion.
- Codigo fuente de la aplicacion.
- Evidencia de tests ejecutados correctamente.
- Evidencia del build y push de imagen.
- Evidencia del despliegue.
- Evidencia de escaneo de seguridad.
- Capturas o exportacion de metricas basicas.
- `README.md` con explicacion de arquitectura, decisiones tomadas y pasos de ejecucion.

Nombre sugerido del archivo:

`PIN-CircleCI_EquipoX.zip`

## Opcion local y opcion nube

- Opcion local: Docker Compose o contenedor desplegado en VM/entorno local.
- Opcion nube: AWS, Azure, GCP u otro entorno aprobado por el docente.

## Requisitos tecnicos minimos

- El pipeline debe dispararse al menos con `push` a rama principal o `pull request`.
- Debe existir separacion entre etapas de validacion, build y deploy.
- El archivo de CircleCI debe evitar duplicacion innecesaria.
- Se debe justificar el uso de cache o reusable commands.
- Debe haber al menos un control de seguridad automatizado.
- Debe mostrarse una estrategia simple de rollback, redeploy o validacion posterior al despliegue.

## Rúbrica de evaluacion

| Criterio | Descripcion | Aporte |
| --- | --- | --- |
| Pipeline CI/CD | El flujo en CircleCI ejecuta validaciones, tests, build y deploy de forma consistente | 25% |
| Diseno del pipeline | Buen uso de jobs, workflows, comandos reutilizables, cache y orden general | 20% |
| Contenedorizacion | Imagen Docker reproducible y bien definida | 15% |
| Seguridad | Escaneo de imagen, dependencias o configuracion integrado al pipeline | 15% |
| Despliegue | Publicacion y despliegue correctos en entorno local o nube | 15% |
| Observabilidad y documentacion | Metricas basicas, evidencias claras y README completo | 10% |

## Criterios de presentacion

- Explicar el problema que resuelve la aplicacion.
- Mostrar el flujo completo desde commit hasta despliegue.
- Justificar por que se eligio esa estructura de CircleCI.
- Mostrar al menos una mejora de performance o mantenibilidad, por ejemplo cache, paralelismo u orbs.
- Explicar riesgos, limites actuales y mejoras futuras.

## Resultado esperado

Al finalizar el proyecto, el equipo deberia poder demostrar que comprende CircleCI no solo como herramienta de ejecucion, sino como mecanismo de diseno de pipelines modulares, seguros, observables y alineados con practicas DevOps modernas.
