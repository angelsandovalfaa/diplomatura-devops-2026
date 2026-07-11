# Proyecto Integrador Final (Automatización Freestyle con trazabilidad - Jenkins I)

## Objetivo general del PIN

Que los estudiantes integren los contenidos vistos en Jenkins I mediante un proyecto practico que combine automatizacion CI, trazabilidad, seguridad operativa, gestion de artefactos y observabilidad basica, aplicando buenas practicas de orden, repetibilidad y evidencia de ejecucion.

## Consigna

Los estudiantes, organizados en equipos, desarrollan el proyecto practico descripto en este documento. A efectos de la presentacion final, deben preparar la documentacion, las evidencias y los artefactos producidos para exponer el flujo completo trabajado con Jenkins.

Cada proyecto practico incluye:

- Objetivo.
- Herramientas a usar.
- Entregables claros.
- Opcion local y opcion nube.
- Rubrica de evaluacion detallada.

## Contenido del proyecto practico

- Una sola herramienta principal de CI/CD: Jenkins.
- Aplicacion base simple generada con IA o creada por el equipo.
- Configuracion segura inicial de Jenkins.
- Uso de Job Freestyle como unidad principal del laboratorio.
- Seguridad y trazabilidad siempre incluidas.
- Evidencia de builds, artefactos y resultados de prueba.

## Proyecto 1: Automatización Freestyle con trazabilidad

### Objetivo

Construir un flujo de integracion continua en Jenkins usando un Job Freestyle que obtenga el codigo, ejecute validaciones, corra pruebas, empaquete un artefacto y conserve evidencia suficiente para auditar cada build.

### Herramientas

- CI/CD: Jenkins LTS
- Repositorio: GitHub o GitLab
- Runtime de ejemplo: Java, Python o Node.js
- Seguridad: credenciales administradas en Jenkins + permisos de minimo privilegio
- Observabilidad: panel de Jenkins, historial de builds y consola de ejecucion

### Entregables

Presentar en un archivo comprimido (`.zip` o `.tar.gz`) los siguientes elementos:

- Capturas de la instalacion inicial o del acceso al Jenkins operativo.
- Captura de la configuracion del Job Freestyle.
- Codigo fuente de la aplicacion utilizada.
- Scripts o comandos de build y test versionados.
- Evidencia de una build exitosa.
- Evidencia de una build fallida con su diagnostico.
- Artefacto archivado por Jenkins.
- Resultado o captura de publicacion de tests.
- `README.md` del equipo con explicacion tecnica del flujo.

Nombrar el archivo comprimido, por ejemplo:

`Proyecto-JenkinsI_EquipoX.zip`

### Opcion local

Jenkins LTS instalado en Ubuntu, Debian, VM local o contenedor Docker, con acceso a un repositorio remoto y ejecucion del job sobre el mismo host o un agente simple.

### Opcion nube

Jenkins montado sobre una VM en AWS, Azure o GCP, con acceso restringido y repositorio remoto conectado mediante credenciales seguras.

## Requisitos tecnicos minimos

- Instalar Jenkins sobre Java 17.
- Completar el Setup Wizard y crear usuario administrador.
- Configurar al menos una credencial para acceso al repositorio o a un recurso externo.
- Crear un Job Freestyle con descripcion y politica de descarte de builds.
- Obtener el codigo desde SCM.
- Ejecutar al menos tres etapas logicas: checkout, test y package.
- Archivar al menos un artefacto final.
- Publicar o conservar evidencia de resultados de prueba.
- Explicar como se podria evolucionar ese job a un `Jenkinsfile`.

## Fases sugeridas del trabajo

### Fase 1: Instalacion y configuracion inicial

- Instalar Jenkins LTS.
- Desbloquear la instancia con la clave inicial.
- Instalar plugins recomendados.
- Configurar CSRF, zona horaria y retencion.
- Crear usuario administrador y credenciales basicas.

### Fase 2: Diseño del Job Freestyle

- Definir nombre, descripcion y politica de limpieza.
- Configurar SCM y rama principal.
- Elegir trigger manual, webhook o polling justificado.
- Configurar build steps con scripts versionados.
- Publicar reportes o tests cuando corresponda.
- Archivar artefactos.

### Fase 3: Trazabilidad y evidencia

- Ejecutar builds con cambios reales.
- Mostrar logs y resultado de consola.
- Mostrar el artefacto generado.
- Explicar que informacion permite rastrear cada ejecucion.

### Fase 4: Analisis y mejora

- Comparar Freestyle con Pipeline.
- Explicar ventajas y limites de esta aproximacion.
- Describir como se agregarian agentes, dashboards o configuracion como codigo.

## Rúbrica Proyecto 1

| Criterio | Descripcion | Aporte al proyecto |
| --- | --- | --- |
| Instalacion y configuracion | Jenkins operativo, seguro y correctamente inicializado | 20% |
| Job Freestyle | El job ejecuta checkout, build/test y empaquetado de forma consistente | 25% |
| Trazabilidad | Builds con evidencia clara, artefactos y diagnostico de fallos | 20% |
| Seguridad operativa | Uso correcto de credenciales, permisos y orden general | 15% |
| Observabilidad | Buena lectura de logs, historial y resultados del job | 10% |
| Documentacion | README, capturas y explicacion clara del flujo | 10% |

## Respecto a la evaluacion

Se valorara especialmente que el equipo no solo logre ejecutar Jenkins, sino que pueda justificar decisiones tecnicas, mostrar evidencia clara y explicar como este flujo se conecta con la idea de integracion continua vista en la clase.

## ¿Cómo interpretar tu rúbrica de trabajo?

- Si Jenkins esta instalado pero el job no produce un flujo reproducible, el proyecto queda incompleto.
- Si el job funciona pero no deja evidencia ni artefactos, falta trazabilidad.
- Si hay automatizacion pero las credenciales o permisos estan mal gestionados, baja la calidad operativa.
- Si el equipo logra explicar el flujo completo, mostrar errores reales y proponer una evolucion futura, demuestra comprension solida del contenido de Jenkins I.
