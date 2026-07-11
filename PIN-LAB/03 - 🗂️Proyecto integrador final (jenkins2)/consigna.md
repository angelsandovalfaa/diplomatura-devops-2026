# Proyecto Integrador Final (Pipeline declarativo con despliegue trazable y monitoreo - Jenkins II)

## Objetivo general del PIN

Que los estudiantes integren los contenidos vistos en Jenkins II mediante un proyecto practico que combine Pipeline as Code, integracion con Git y Maven, publicacion de artefactos en AWS S3, seguridad operativa y observabilidad con Prometheus, aplicando buenas practicas de mantenibilidad, versionado y trazabilidad.

## Consigna

Los estudiantes, organizados en equipos, desarrollan el proyecto practico descripto en este documento. A efectos de la presentacion final, deben entregar la documentacion, el `Jenkinsfile`, las evidencias del pipeline y el conjunto de artefactos generados durante la ejecucion.

Cada proyecto practico incluye:

- Objetivo.
- Herramientas a usar.
- Entregables claros.
- Opcion local y opcion nube.
- Rubrica de evaluacion detallada.

## Contenido del proyecto practico

- Una sola herramienta principal de CI/CD: Jenkins.
- Pipeline as Code usando `Jenkinsfile`.
- Integracion con repositorio Git y proyecto Maven.
- Seguridad en el uso de credenciales y accesos.
- Publicacion de artefactos versionados en AWS S3.
- Observabilidad basica de Jenkins mediante Prometheus y dashboards.

## Proyecto 1: Pipeline declarativo con despliegue trazable y monitoreo

### Objetivo

Construir un pipeline declarativo en Jenkins que detecte cambios en un repositorio Git, compile y testee una aplicacion Maven, publique reportes de calidad, despliegue el artefacto resultante en un bucket S3 con identificadores versionados y exponga evidencia operativa suficiente para monitorear el estado del sistema.

### Herramientas

- CI/CD: Jenkins LTS
- Pipeline as Code: Declarative Pipeline
- Repositorio: GitHub o GitLab
- Build tool: Maven
- Artefactos: AWS S3
- Seguridad: credenciales Jenkins + politicas IAM de minimo privilegio
- Observabilidad: Prometheus Plugin + Grafana o dashboard equivalente

### Entregables

Presentar en un archivo comprimido (`.zip` o `.tar.gz`) los siguientes elementos:

- `Jenkinsfile` versionado en el repositorio.
- Codigo fuente de la aplicacion Maven utilizada.
- Evidencia de credenciales configuradas en Jenkins sin exponer secretos.
- Evidencia de integracion por webhook o justificacion tecnica de otra estrategia.
- Captura o exportacion de los resultados de pruebas JUnit.
- Evidencia de artefacto publicado en AWS S3.
- Captura del bucket con versionado o nomenclatura trazable por build.
- Captura o exportacion de metricas de Jenkins desde Prometheus/Grafana.
- `README.md` del equipo con arquitectura, decisiones y limitaciones.

Nombrar el archivo comprimido, por ejemplo:

`Proyecto-JenkinsII_EquipoX.zip`

### Opcion local

Jenkins instalado en VM local o Docker, proyecto Maven en repositorio remoto, pipeline ejecutado en el controller o en un agente simple, y despliegue hacia un bucket S3 real o entorno de prueba definido por el docente.

### Opcion nube

Jenkins desplegado en una VM de AWS, Azure o GCP, integrado con repositorio Git remoto, agentes dedicados cuando corresponda y publicacion real de artefactos en S3 con controles de acceso minimos.

## Requisitos tecnicos minimos

- Crear un `Jenkinsfile` declarativo legible y versionado.
- Separar el flujo al menos en `Checkout`, `Build`, `Test`, `Publish` y `Post`.
- Usar credenciales gestionadas desde Jenkins, nunca embebidas en texto plano.
- Ejecutar `mvn test` o flujo equivalente de Maven.
- Publicar resultados JUnit o reportes comparables.
- Subir un artefacto a S3 con nombre versionado por `BUILD_NUMBER`, tag o commit.
- Justificar permisos IAM aplicados al bucket o al usuario tecnico.
- Exponer al menos tres metricas utiles de Jenkins a traves de Prometheus.
- Describir una estrategia de rollback o recuperacion de artefactos.

## Fases sugeridas del trabajo

### Fase 1: Diseño del pipeline

- Definir el repositorio de trabajo.
- Crear el `Jenkinsfile`.
- Elegir Declarative Pipeline y justificar la decision.
- Declarar stages, `post`, `options` y manejo basico de fallos.

### Fase 2: Integracion con Git y Maven

- Conectar Jenkins con el repositorio usando credenciales seguras.
- Configurar webhook o trigger elegido.
- Ejecutar compilacion y tests con Maven.
- Publicar reportes de calidad, pruebas o cobertura.

### Fase 3: Publicacion de artefactos

- Generar un artefacto versionado.
- Publicarlo en S3 con convencion clara de nombres.
- Verificar su presencia y documentar la trazabilidad.
- Definir politica de retencion o lifecycle basica.

### Fase 4: Observabilidad y operacion

- Instalar y configurar Prometheus Plugin.
- Exponer y revisar metricas de salud de Jenkins.
- Construir o describir un dashboard basico.
- Proponer alertas para cola, duracion de jobs o uso de ejecutores.

## Rúbrica Proyecto 1

| Criterio | Descripcion | Aporte al proyecto |
| --- | --- | --- |
| Pipeline declarativo | `Jenkinsfile` claro, versionado y mantenible | 25% |
| Integracion CI | Compilacion, tests, webhooks y uso correcto de Maven/Git | 20% |
| Publicacion de artefactos | Despliegue correcto y trazable en AWS S3 | 20% |
| Seguridad operativa | Credenciales, permisos IAM y tratamiento de secretos | 15% |
| Observabilidad | Prometheus, metricas relevantes y lectura operativa | 10% |
| Documentacion | README, capturas y explicacion del flujo completo | 10% |

## Respecto a la evaluacion

Se valorara especialmente que el equipo muestre la evolucion desde Freestyle hacia Pipeline as Code y que pueda explicar por que esta forma de trabajo mejora el versionado, la mantenibilidad y la confiabilidad del proceso de entrega.

## ¿Cómo interpretar tu rúbrica de trabajo?

- Si el `Jenkinsfile` existe pero no refleja un flujo claro por etapas, el proyecto queda incompleto.
- Si el pipeline compila pero no publica evidencias ni artefactos, falta trazabilidad.
- Si se sube a S3 pero sin control de nombres, permisos o versionado, baja la calidad operativa.
- Si se monitorea Jenkins con metricas concretas y se justifican alertas utiles, el proyecto demuestra una comprension madura de Jenkins II.
