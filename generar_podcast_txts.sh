#!/usr/bin/env bash
set -euo pipefail

ROOT="/home/pepe/proyectos/diplomatura-devops-2026"

write_txt() {
  local dir="$1"
  mkdir -p "$ROOT/$dir"
  cat > "$ROOT/$dir/explicacion-podcast.txt"
}

write_txt "01 - 👋Bienvenida" <<'EOF'
Esta clase de bienvenida funciona como la puerta de entrada a toda la diplomatura. La idea no es solo saludar y mostrar una plataforma, sino ayudarte a entender como va a ser el recorrido completo, donde vas a encontrar cada recurso y como organizarte para no sentir que todo aparece desordenado. Cuando uno arranca una formacion tecnica, muchas veces el primer desafio no es el contenido en si, sino aprender a moverse dentro del entorno de estudio. Por eso esta bienvenida importa tanto: te muestra como entrar a los encuentros, como ubicar materiales, como seguir el cronograma y como registrar la asistencia sin perderte en detalles operativos.

Tambien aparece algo clave desde el principio, la logica general del programa. No se trata de ver temas sueltos, sino de avanzar por un camino que va uniendo Linux, Git, nube, CI/CD, contenedores, Kubernetes, IaC, seguridad, monitoreo y practicas profesionales. Dicho simple, esta clase te da el mapa antes de empezar el viaje. Y eso reduce muchisimo la ansiedad, porque ya no sentis que estas entrando a un lugar desconocido, sino a un trayecto con estaciones claras.

Ademas, la bienvenida empieza a instalar una idea muy importante para toda la cursada: el proyecto integrador final no aparece al final como una sorpresa, sino que se va construyendo desde el inicio en la cabeza del estudiante. Cada modulo suma una pieza. Entonces, mas que una clase administrativa, esta bienvenida te ordena, te orienta y te ayuda a entender que aprender DevOps no es solo consumir contenido, sino sostener un proceso continuo, organizado y con objetivos concretos.
EOF

write_txt "05 - Encuentro 1- Introducción a Devops" <<'EOF'
En esta clase empezamos por la gran pregunta de fondo: que es realmente DevOps, y por que se volvio tan importante en el mundo del software moderno. Muchas personas escuchan el termino y piensan enseguida en herramientas, pipelines o automatizacion, pero la base es mas profunda. DevOps es una forma de trabajar donde desarrollo y operaciones dejan de vivir como mundos separados y empiezan a colaborar sobre un mismo objetivo: entregar valor mas rapido, con menos errores y con mejor capacidad de respuesta.

La clase muestra que esta transformacion no es solo tecnica, sino cultural. La palabra cultura aca importa mucho, porque habla de confianza, comunicacion, responsabilidad compartida y feedback continuo. Es como pasar de una carrera de postas, donde cada equipo lanza el trabajo al siguiente, a una banda que toca al mismo tiempo y necesita escucharse para sonar bien. Ahi aparecen tres pilares que atraviesan todo el encuentro: automatizacion, integracion y colaboracion. La automatizacion reduce tareas repetitivas y errores manuales. La integracion evita que el codigo quede aislado demasiado tiempo. Y la colaboracion permite que los problemas se detecten antes y se resuelvan en conjunto.

Tambien entra una comparacion muy util con enfoques mas tradicionales, como Waterfall, y con Agile. Eso ayuda a ver que DevOps no reemplaza todo lo anterior como si borrara la historia, sino que toma aprendizajes y los extiende hacia la operacion real del software. Finalmente, la clase conecta esta mirada con Lean Thinking, Value Stream Mapping y metricas como frecuencia de despliegue, lead time, tasa de fallos y tiempo de recuperacion. En otras palabras, no alcanza con decir que trabajamos mejor: hay que poder medirlo. Y ese es justamente el corazon de DevOps, convertir una promesa de agilidad en una practica observable y sostenida.
EOF

write_txt "07 - Encuentro 2- Linux I" <<'EOF'
Esta clase funciona como la verdadera entrada al mundo Linux. Primero te ayuda a entender que es un sistema operativo y por que ocupa un lugar tan central entre el usuario, las aplicaciones y el hardware. A partir de ahi, Linux deja de verse como una pantalla llena de comandos y empieza a presentarse como un entorno ordenado, potente y muy usado en infraestructura real.

La explicacion recorre los fundamentos que hacen que Linux sea tan importante en servidores y entornos productivos: su historia, su modelo abierto, sus distribuciones y su arquitectura general. Pero lo mas valioso es que despues aterriza en lo concreto. Aparece la estructura de archivos, esa especie de mapa del sistema donde cada directorio tiene un proposito claro. Tambien entran los comandos basicos de navegacion y manejo de archivos, que son como las primeras herramientas para moverse con autonomia dentro del sistema.

La clase sigue con gestion de procesos, para entender que pasa cuando un programa esta corriendo, esperando o finalizando, y cierra con administracion de usuarios, grupos y permisos. Ese tramo es fundamental, porque en Linux la seguridad y el orden cotidiano pasan mucho por decidir quien puede leer, escribir o ejecutar. Si tuvieras que resumir esta clase en una sola idea, seria esta: Linux no es una coleccion de comandos sueltos, sino un sistema coherente donde archivos, procesos, usuarios y permisos se relacionan todo el tiempo. Entender esa base cambia por completo la forma de mirar cualquier entorno tecnico.
EOF

write_txt "08 - Encuentro 3- Linux II" <<'EOF'
Si Linux I fue la clase para aprender a orientarse dentro del sistema, Linux II es la clase donde ese sistema empieza a volverse una herramienta de administracion mucho mas profesional. El primer gran tema es la gestion de paquetes. Y esto importa porque, en Linux, instalar y mantener software no deberia ser una improvisacion, sino un proceso ordenado, trazable y seguro.

La clase explica que un gestor de paquetes no es solo una utilidad para descargar programas. Es una pieza central que resuelve dependencias, actualiza componentes, evita conflictos y ayuda a mantener el sistema estable. Ahi aparecen ecosistemas como APT, YUM, DNF, Zypper, Snap y Flatpak. Cada uno responde a una familia de distribuciones o a una forma distinta de distribuir aplicaciones, pero todos apuntan a la misma idea: que el software se administre con criterio, y no de forma artesanal.

La segunda mitad del encuentro abre la puerta a la automatizacion con shell scripting. Y este cambio es enorme. Hasta ahora, el estudiante venia ejecutando acciones manuales. Con los scripts, empieza a decirle al sistema como repetir tareas por el mismo. La clase presenta la definicion de un script, su estructura basica, el rol del shell y la utilidad de condicionales, bucles y funciones. Mas alla de los ejemplos puntuales, el mensaje de fondo es muy potente: automatizar no es escribir por escribir, es encapsular conocimiento operativo para ahorrar tiempo, reducir errores y construir flujos mas consistentes. En ese momento Linux deja de ser solo un lugar donde damos ordenes, y empieza a ser un entorno donde diseñamos procesos.
EOF

write_txt "09 - Encuentro 4- Git - Github - Gitlab" <<'EOF'
Esta clase introduce una herramienta que cambia por completo la forma de trabajar en desarrollo: Git. Pero no se queda en la idea de guardar versiones, sino que explica por que el control de versiones es tan importante cuando varias personas tocan el mismo proyecto, cuando hace falta volver atras, o cuando un cambio pequeño puede tener mucho impacto.

Git aparece como el sistema que guarda historia, contexto y colaboracion. La clase muestra como se instala, como se configura y como se usan sus comandos basicos para inicializar repositorios, registrar cambios, revisar el historial y sincronizar trabajo. Lo interesante es que Git no se presenta como una caja de comandos aislada, sino como una manera de pensar el desarrollo: cada cambio deja evidencia, cada version cuenta una historia y cada rama permite experimentar sin romper el tronco principal.

Despues entran GitHub y GitLab, que agregan la capa colaborativa. Ahi aparecen conceptos como fork, pull request y merge request. En lenguaje simple, esto significa que colaborar ya no es mandarse archivos por mensaje ni pisarse cambios, sino proponer modificaciones dentro de un flujo visible, revisable y ordenado. La clase ayuda a entender que trabajar con repositorios remotos no es solo subir codigo, sino participar en un proceso donde el historial, la revision y la integracion forman parte del trabajo diario. En el fondo, Git te enseña a conservar memoria tecnica, y GitHub o GitLab te enseñan a compartirla.
EOF

write_txt "11 - Encuentro 5- Práctica profesional I" <<'EOF'
Esta practica profesional toma todo lo visto en Linux y Git, y lo baja a un escenario mucho mas real. La propuesta no es seguir teoria, sino armar un entorno de trabajo que se parezca a lo que un profesional realmente usa. Por eso la clase gira alrededor de tres piezas concretas: una maquina virtual con Ubuntu, la configuracion de Git y la conexion con GitHub y GitLab.

La primera parte te muestra por que una maquina virtual es tan util para aprender. En lugar de trabajar siempre sobre la computadora principal, podes simular un servidor, instalar un sistema desde cero y practicar sin miedo a romper el entorno local. Eso ya te pone en una mentalidad distinta, mas cercana a infraestructura y operaciones. Despues aparece la configuracion de Git dentro de esa maquina, incluyendo nombre, correo y llaves SSH, que son la base para autenticarte y trabajar de forma profesional con repositorios remotos.

La ultima parte une todo: clonar repositorios, crear uno nuevo, versionar archivos y subir cambios tanto a GitHub como a GitLab. Visto desde afuera puede parecer una practica simple, pero en realidad marca un punto de madurez muy importante. El estudiante deja de ver las herramientas por separado y empieza a integrarlas en un flujo unico. En otras palabras, esta practica no solo repasa contenidos, sino que construye el primer laboratorio donde Linux, virtualizacion y control de versiones empiezan a funcionar como un ecosistema real de trabajo.
EOF

write_txt "12 - Encuentro 6- Introducción a AWS I" <<'EOF'
En esta clase aparece la nube, pero antes de hablar de servicios puntuales se da un paso muy saludable: entender que significa realmente cloud computing. La clase ayuda a romper la idea de que la nube es solo "usar internet". En realidad, se trata de consumir recursos de infraestructura, plataforma o software de manera flexible, escalable y bajo demanda, sin tener que construir todo fisicamente desde cero.

A partir de ahi, el encuentro recorre los modelos IaaS, PaaS y SaaS, mostrando que no todos los servicios cloud entregan el mismo nivel de control. A veces alquilas maquinas, otras veces una plataforma lista para desplegar, y otras directamente una aplicacion completa. Ese marco prepara el terreno para entrar a AWS como ecosistema. La clase presenta su historia, sus beneficios y su logica general como proveedor de nube, y luego aterriza en servicios principales como VPC, S3, EC2 y RDS.

Tambien se explica el escalamiento vertical y horizontal, que es una idea clave para cualquier arquitectura. Escalar verticalmente es hacer mas grande una maquina; escalar horizontalmente es sumar mas instancias. Parece un detalle tecnico, pero en realidad es una decision estrategica de diseño. La gran virtud de esta clase es que no te ahoga en catalogos de servicios, sino que te da el marco mental para entender por que AWS existe, que problemas viene a resolver y como empieza a ordenar infraestructura de una forma mucho mas elastica que la tradicional.
EOF

write_txt "13 - Encuentro 7- Introducción a AWS II" <<'EOF'
Si AWS I te mostro el mapa general, AWS II entra en piezas que hacen posible diseñar entornos cloud con mas criterio. La clase empieza con zonas de disponibilidad, que son una idea central para entender resiliencia. No alcanza con tener recursos en la nube; tambien importa como se distribuyen para soportar fallas y mantener continuidad.

Despues aparece IAM, una de las capas mas sensibles de cualquier plataforma cloud. La clase ayuda a entender que gestionar identidades y accesos no es solo crear usuarios, sino decidir quien puede hacer que, sobre que recursos y con que nivel de privilegio. En una nube moderna, esa administracion es parte de la seguridad misma. A eso se suman los fundamentos de red en AWS, donde conceptos como VPC, subredes, conectividad y aislamiento dejan de ser teoria abstracta y empiezan a sentirse como las calles y barrios de una ciudad digital.

El encuentro tambien toca seguridad y costos, dos temas que muchas veces se olvidan cuando alguien se entusiasma con desplegar servicios. Seguridad, porque una mala configuracion puede abrir puertas innecesarias. Costos, porque la nube es flexible, pero justamente por eso puede crecer sin control si no se observa con disciplina. En conjunto, esta clase te enseña a mirar AWS no solo como un lugar donde crear recursos, sino como un entorno que hay que diseñar, gobernar y sostener con decisiones responsables.
EOF

write_txt "14 - Encuentro 8- Introducción a Azure I" <<'EOF'
Esta clase repite la entrada a cloud computing, pero ahora desde el universo de Azure. Y eso es muy valioso, porque te permite comprobar que las ideas esenciales de la nube son comunes, aunque cada proveedor tenga su propia forma de nombrar servicios y organizar su oferta. De nuevo aparecen los modelos IaaS, PaaS y SaaS, los beneficios de la nube y la logica de escalado, pero esta vez conectados con el ecosistema de Microsoft.

La clase presenta la vision general de Azure y luego baja a servicios principales como maquinas virtuales, almacenamiento, App Service, Azure SQL y Azure Functions. Lo interesante es que no se trata solo de memorizar nombres, sino de reconocer patrones. Una maquina virtual sigue resolviendo computo, un servicio de almacenamiento sigue resolviendo persistencia, y un servicio serverless sigue resolviendo ejecucion bajo demanda sin administrar servidores completos.

Eso permite desarrollar una mirada comparativa muy util. El estudiante empieza a entender que aprender nube no significa casarse mentalmente con una sola marca, sino reconocer conceptos repetibles entre plataformas. Azure aparece entonces como otra gran puerta de entrada al mismo mundo: elasticidad, servicios administrados, escalado y arquitectura distribuida. Y cuanto antes se entienda esa traduccion entre proveedores, mas facil se vuelve moverse en entornos reales donde distintas organizaciones eligen herramientas diferentes.
EOF

write_txt "15 - Encuentro 9- Introducción a Azure II" <<'EOF'
Azure II lleva la conversacion hacia temas que sostienen de verdad una arquitectura cloud: disponibilidad, identidad, red, automatizacion y costos. La clase arranca por las zonas de disponibilidad, porque la nube no solo se trata de tener recursos, sino de distribuirlos con criterio para evitar puntos unicos de falla. Esa idea conecta enseguida con el diseño de sistemas resilientes.

Despues aparece la administracion de identidad y acceso, o IAM. Y como en otras nubes, esta capa es mucho mas que una configuracion administrativa. Es la forma en que una organizacion pone orden, limita permisos y reduce superficie de riesgo. A eso se suman las redes virtuales, subredes y firewall, que permiten imaginar Azure como un territorio donde no todo esta abierto ni conectado de cualquier manera, sino segmentado y protegido.

La clase tambien introduce Logic Apps y Functions, mostrando que Azure no se limita a infraestructura clasica. Tambien ofrece formas de automatizar tareas y ejecutar logica por eventos, algo muy alineado con arquitecturas modernas. Finalmente, aparece la gestion de costos, otro recordatorio importante de que la nube no es infinita ni gratuita por defecto. En pocas palabras, esta clase te enseña a pasar de conocer Azure como catalogo a pensarlo como plataforma viva, donde identidad, red, automatizacion y presupuesto forman parte de la misma conversacion.
EOF

write_txt "16 - Encuentro 10- Introducción a Google Cloud I" <<'EOF'
En esta clase la nube se mira desde el ecosistema de Google Cloud Platform, y eso suma otra perspectiva muy valiosa. GCP vuelve a presentar los fundamentos de cloud computing y los modelos de servicio, pero al mismo tiempo deja ver su propio estilo, muy asociado a escalabilidad, servicios administrados y herramientas nativas para datos y aplicaciones modernas.

El recorrido pasa por la vision general de GCP y despues por servicios como Cloud SQL, Cloud Run, Cloud Storage y BigQuery. Cada uno representa una forma distinta de resolver necesidades clasicas: bases de datos, ejecucion de aplicaciones, almacenamiento de objetos y analitica a gran escala. La clase ayuda a que esos nombres no queden flotando como catalogo, sino conectados con problemas reales que una arquitectura necesita resolver.

Tambien vuelve la idea de escalamiento vertical y horizontal, porque da igual la nube que uses: si no entendes como crecer frente a la demanda, tarde o temprano vas a diseñar mal. Lo mas rico de esta clase es que te permite ver que la nube no es una marca, sino una familia de conceptos. GCP no reemplaza a AWS o Azure en la cabeza; se suma como otra manera de expresar las mismas necesidades con herramientas propias. Y esa comparacion fortalece mucho la comprension general del estudiante.
EOF

write_txt "17 - Encuentro 11- Introduccion a Google Cloud II" <<'EOF'
GCP II profundiza justo en las piezas que vuelven seria a una arquitectura en la nube: disponibilidad, acceso, red, seguridad y costos. La clase explica que las zonas de disponibilidad no son un detalle geografico curioso, sino un mecanismo para repartir riesgo y sostener continuidad operativa. Cuando un servicio se distribuye bien, la nube deja de ser simplemente comoda y empieza a volverse confiable.

Despues se trabaja IAM, que en Google Cloud organiza permisos de forma jerarquica y muy granular. Esto enseña una leccion importante: en cloud, la seguridad no vive solo en el perimetro, vive tambien en como se asignan roles, en que cuentas de servicio existen y en como se auditan accesos. Luego entran redes, VPC, subredes, ruteo, NAT e internet gateway, que ayudan a pensar el trafico y la conectividad con mucha mas claridad.

El tramo final suma reglas de firewall, cuentas de servicio y una introduccion a billing, presupuestos y alertas. Ese cierre es clave porque baja la arquitectura a dos preguntas muy concretas: que tan expuesto esta mi sistema, y cuanto cuesta sostenerlo. En resumen, esta clase no te enseña solo a usar GCP, sino a razonar sobre diseño responsable en la nube: alta disponibilidad, minimo privilegio, segmentacion y control economico.
EOF

write_txt "18 - Encuentro 12- Práctica profesional II" <<'EOF'
Esta practica profesional pone a jugar de verdad los conocimientos de nube con una historia concreta: una empresa ficticia que migra servicios desde AWS hacia GCP. Y eso es muy bueno pedagogicamente, porque ya no se trata de mirar dos proveedores por separado, sino de compararlos en una accion real de trabajo.

La primera actividad gira alrededor de un sitio estatico. Parece algo simple, pero es perfecta para entender almacenamiento de objetos, hosting web y exposicion publica controlada. Ver un archivo vivir primero en S3 y despues en Cloud Storage te ayuda a notar que, detras de nombres distintos, muchas veces los problemas son equivalentes. La segunda actividad es todavia mas interesante: mover una base SQLite desde una instancia en EC2 hacia una VM en GCP. Ahi ya entran maquinas virtuales, acceso remoto, herramientas de linea de comandos, transferencia de archivos y validacion de funcionamiento.

Todo el laboratorio esta pensado para hacerse con CLI, y eso tiene mucho valor. Te obliga a salir de la comodidad de la consola grafica y a operar con pasos repetibles, claros y profesionales. En el fondo, la practica te muestra que migrar no es copiar cosas sin mas, sino comprender servicios, preparar entornos, mover datos y verificar que todo siga funcionando. Esa es una habilidad mucho mas cercana al mundo real que simplemente "crear recursos en la nube".
EOF

write_txt "19 - Encuentro 13- Gitlab CI - Github Actions I" <<'EOF'
En esta clase aparece uno de los grandes cambios de mentalidad del curso: el paso desde versionar codigo hacia automatizar su ciclo de vida. El foco esta en GitLab CI y en la idea misma de pipeline. Un pipeline es, en palabras simples, una linea de produccion del software. Cada vez que alguien hace un cambio, el sistema puede compilar, probar, analizar y eventualmente preparar el despliegue sin depender de una ejecucion manual.

La clase explica que esta automatizacion no es solo comodidad tecnica. Es una forma de reducir tiempos, hacer visible el estado del proyecto y construir confianza en cada integracion. Ahi entra el concepto de pipeline as code con el archivo YAML, donde el flujo queda definido junto al repositorio y puede auditarse, revisarse y versionarse igual que cualquier otra parte del proyecto.

Despues aparecen runners, jobs, stages, variables y cache. Todo eso puede sonar tecnico al principio, pero la logica es bastante humana: quien ejecuta las tareas, en que orden, con que informacion y como se evita repetir trabajo innecesario. Al final, la clase deja una idea muy fuerte: CI no es solo ejecutar pruebas, es construir un mecanismo confiable de feedback rapido. Cuando el pipeline se vuelve parte del trabajo diario, el equipo deja de descubrir problemas tarde y empieza a recibir señales casi en tiempo real.
EOF

write_txt "20 - Encuentro 14- Gitlab CI - Github Actions II" <<'EOF'
Si la clase anterior te mostro la idea general de automatizar pipelines, esta se enfoca en GitHub Actions como plataforma integrada a GitHub. La propuesta es entender como se escriben workflows en YAML, que eventos pueden dispararlos y como se organizan jobs, steps y actions dentro de una ejecucion automatizada.

La clase ayuda a ver que GitHub Actions no es magia escondida en la interfaz, sino una forma declarativa de decirle al repositorio que hacer cuando ocurre un push, un pull request, una ejecucion manual o una tarea programada. Eso permite convertir eventos cotidianos del desarrollo en puntos de control automatizados. Tambien aparecen variables, secretos y runners, que son claves para que esa automatizacion sea util sin exponer credenciales ni depender de una sola forma de ejecucion.

El cierre comparativo con GitLab CI es especialmente valioso. No para discutir cual es "mejor" de forma absoluta, sino para desarrollar criterio. Algunas organizaciones viven en GitHub y prefieren la integracion nativa. Otras usan GitLab como plataforma mas unificada. Lo importante es que el estudiante empiece a reconocer patrones comunes: pipeline definido como codigo, ejecucion por eventos, jobs encadenados, secretos protegidos y feedback continuo. Una vez que entendes esa estructura, cambiar de herramienta deja de ser un abismo y se vuelve una traduccion.
EOF

write_txt "21 - Encuentro 15- CircleCi" <<'EOF'
Esta clase amplifica el universo de CI/CD mostrando CircleCI, otra plataforma muy importante dentro de la automatizacion moderna. Lo valioso aca no es solo aprender otra herramienta, sino confirmar que la integracion y entrega continuas no dependen de un solo proveedor. La idea central se repite: cada cambio en el codigo puede disparar un proceso automatizado de validacion, build, pruebas y despliegue.

CircleCI aparece como una plataforma muy enfocada en velocidad, elasticidad y experiencia SaaS. La clase presenta el archivo config.yml, la logica de jobs y workflows, el uso de cache, variables y secretos, y luego suma conceptos mas avanzados como orbs, paralelismo y optimizacion de tiempos. Los orbs son especialmente interesantes porque muestran que la automatizacion tambien se puede reutilizar. No todo hay que reinventarlo.

Tambien entra la conversacion sobre costos, despliegues e integraciones. Eso ayuda a ver que un pipeline no vive aislado: necesita publicar artefactos, interactuar con registries, hablar con entornos de nube y emitir alertas si algo sale mal. Al final, CircleCI funciona como otro ejemplo de una verdad mas grande: la entrega continua no es una unica receta, sino una practica con muchos sabores. Aprender uno mas ensancha la mirada y fortalece la capacidad de adaptarse a distintos contextos profesionales.
EOF

write_txt "22 - Encuentro 16- Jenkins I" <<'EOF'
Con Jenkins aparece un clasico del ecosistema DevOps. Esta clase explica por que una herramienta con tantos años sigue siendo relevante y como logro ocupar un lugar central en la historia de la integracion continua. Jenkins no se presenta solo como un programa para automatizar tareas, sino como una plataforma extensible que permitio a muchisimos equipos construir pipelines antes de que las opciones modernas integradas se hicieran tan comunes.

La clase recorre su arquitectura, sus componentes principales y la logica de jobs. Eso ayuda a entender que Jenkins no es solo una pantalla con botones, sino un motor capaz de coordinar ejecuciones, encadenar pasos, guardar artefactos y mostrar resultados. Tambien se trabaja la diferencia entre jobs freestyle y pipelines, que marca el paso desde configuraciones mas manuales hacia definiciones mas versionables y repetibles.

Hay algo muy formativo en aprender Jenkins: obliga a mirar la automatizacion de una forma mas desnuda, menos encapsulada por plataformas modernas. Ves mejor como se organiza una build, como se orquesta una tarea y como se vuelve visible un proceso. En ese sentido, la clase no solo enseña Jenkins, sino que tambien fortalece la comprension general de CI/CD como disciplina.
EOF

write_txt "23 - Encuentro 17- Jenkins II" <<'EOF'
Jenkins II da el salto desde la introduccion hacia flujos mas cercanos a escenarios reales. El tema central son los pipelines, especialmente la diferencia entre estilos mas tradicionales y los declarativos. Eso importa porque un pipeline bien expresado permite entender, versionar y mantener mejor la automatizacion.

Despues entra la integracion con Git y Maven, que muestra como Jenkins puede participar del ciclo completo: obtener codigo, compilar, ejecutar pruebas y generar artefactos. La clase tambien toca credenciales, reportes de calidad y estrategias de ramas, demostrando que automatizar no es solo "correr cosas", sino sostener un proceso controlado y trazable. A eso se suma el despliegue de artefactos en AWS S3, que sirve para conectar la automatizacion con un destino concreto de publicacion.

El cierre con monitoreo usando Prometheus y Grafana es muy potente, porque rompe la idea de que el pipeline termina cuando la tarea se ejecuto. En realidad, tambien importa observarlo, medirlo y saber como se comporta. Esta clase, entonces, empuja a Jenkins hacia una mirada mas madura: pipeline, calidad, despliegue y monitoreo ya no aparecen como piezas separadas, sino como partes de un mismo flujo de entrega.
EOF

write_txt "24 - Encuentro 18- Práctica Profesional 3" <<'EOF'
Esta practica profesional toma Jenkins y lo convierte en un laboratorio concreto. La propuesta es instalarlo sobre Ubuntu, preparar el entorno, integrar Git, crear una aplicacion sencilla y construir un pipeline que responda automaticamente a cambios en el repositorio. Dicho de otro modo, ya no estamos solo entendiendo que hace Jenkins, sino poniendolo a trabajar.

El valor de esta practica esta en la secuencia completa. Primero se prepara el sistema y se instala Java, porque Jenkins vive sobre ese entorno. Luego se levanta Jenkins, se accede a la interfaz y se conecta con un proyecto real. A partir de ahi, la automatizacion deja de ser abstracta: aparece una app, un pipeline, un trigger por cambios y una verificacion del resultado. Todo eso entrena algo muy importante en DevOps, que es la capacidad de unir herramientas distintas en un flujo funcional.

Tambien hay un costado muy pedagogico en ver fallas, ajustar configuraciones y volver a intentar. Esa friccion controlada es parte del aprendizaje real. Al terminar, el estudiante no solo conoce Jenkins de nombre, sino que entiende como se instala, como se integra y como empieza a sostener una integracion continua basica pero autentica.
EOF

write_txt "25 - Encuentro 19- Docker I" <<'EOF'
Docker I marca otro gran punto de inflexion del curso, porque introduce la logica de contenedores. La clase empieza por algo fundamental: entender la diferencia entre contenedores y maquinas virtuales. Ambos aislan, pero no de la misma manera. Los contenedores comparten el kernel del sistema anfitrion y por eso son mas livianos, rapidos y faciles de mover entre entornos.

A partir de ahi, Docker aparece como la herramienta que empaqueta aplicaciones junto con sus dependencias para que se comporten de forma consistente. Eso responde a un problema muy conocido en tecnologia: el clasico "en mi maquina funciona". La clase muestra su arquitectura general, sus componentes y su flujo basico de uso, desde descargar una imagen hasta ejecutar un contenedor y observar su ciclo de vida.

Tambien entra la instalacion y configuracion inicial, junto con comandos esenciales para gestionar imagenes y contenedores. Lo interesante es que Docker no se presenta solo como una utilidad tecnica, sino como una nueva forma de distribuir y ejecutar software. Cuando esa idea se asienta, el estudiante empieza a ver que muchas piezas de DevOps moderno, desde CI/CD hasta Kubernetes, se vuelven mucho mas comprensibles.
EOF

write_txt "26 - Encuentro 20- Docker II" <<'EOF'
En Docker II el enfoque deja de estar en usar contenedores ajenos y pasa a construir soluciones propias con mas criterio. La clase se mete en imagenes, Dockerfile, volumenes, redes, Docker Compose y registries privados. Es decir, se entra de lleno en la cocina de Docker.

La parte de imagenes y Dockerfile es central porque enseña a describir como se construye un entorno de aplicacion de forma repetible. Ya no dependes solamente de lo que existe en un repositorio publico; ahora podes armar una imagen a tu medida. Luego aparecen los volumenes, que resuelven un problema muy concreto: que pasa con los datos cuando un contenedor es efimero. Y despues las redes, que muestran como varios contenedores pueden comunicarse entre si sin quedar flotando como procesos aislados.

Docker Compose aporta una capa muy importante de orquestacion local. Permite definir pilas de servicios y levantarlas juntas, algo ideal para desarrollo, pruebas o laboratorios. Finalmente, los registries privados conectan todo esto con una necesidad profesional: almacenar y distribuir imagenes bajo control propio. En conjunto, la clase lleva a Docker desde el nivel de uso basico hacia una comprension mucho mas completa y productiva.
EOF

write_txt "27 - Encuentro 21- Kubernetes I" <<'EOF'
Kubernetes I abre la puerta a la orquestacion de contenedores, que es uno de los grandes saltos conceptuales de la infraestructura moderna. La clase explica que, cuando una aplicacion deja de ser un solo contenedor y pasa a repartirse en muchas piezas, ya no alcanza con ejecutarlas manualmente. Hace falta un sistema que observe el estado deseado y se encargue de mantenerlo.

Esa es la gran idea de Kubernetes: un enfoque declarativo donde describis como queres que se vea el sistema y el clúster trabaja continuamente para reconciliar la realidad con esa definicion. La clase recorre arquitectura, control plane y data plane, y luego aterriza en objetos fundamentales como Pod, ReplicaSet, Deployment y Service. Cada uno cumple un rol diferente, pero juntos permiten pensar despliegue, disponibilidad y acceso de red de forma mucho mas ordenada.

Tambien aparecen los manifiestos YAML y kubectl, que son la forma cotidiana de interactuar con este mundo. En un nivel profundo, la clase no solo te enseña terminos nuevos. Te enseña a dejar de pensar en procesos aislados y empezar a pensar en sistemas declarados, observados y autocorregidos. Y ese cambio mental es una de las claves del paradigma cloud native.
EOF

write_txt "28 - Encuentro 22- Kubernetes II" <<'EOF'
La segunda clase de Kubernetes ya trabaja sobre mecanismos mas maduros de operacion. Aparecen el escalado automatico con HPA, las estrategias de actualizacion con rolling update y rollback, la gestion avanzada de configuracion con ConfigMaps y Secrets, el almacenamiento persistente y una introduccion a Helm.

Cada uno de esos temas resuelve un problema muy concreto. El HPA responde a la pregunta de como crecer o achicarse segun la demanda. Rolling update y rollback responden a como cambiar una version sin romper el servicio y como volver atras si algo sale mal. ConfigMaps y Secrets muestran que una aplicacion no deberia mezclar codigo con configuracion, y que no toda informacion merece el mismo tratamiento de seguridad. El almacenamiento persistente, por su parte, rompe con la idea de que todo en contenedores es descartable.

Helm cierra la clase aportando una capa de empaquetado y reutilizacion para despliegues Kubernetes. En lugar de repetir manifiestos enormes, podes trabajar con plantillas, valores y releases. La imagen general que deja la clase es muy potente: Kubernetes no es solo "levantar pods", sino administrar crecimiento, actualizaciones, configuracion, datos y despliegues repetibles con un nivel alto de control.
EOF

write_txt "29 - Encuentro 23- Práctica Profesional 4" <<'EOF'
Esta practica toma los conceptos de Docker y Kubernetes y los baja a una experiencia concreta sobre una VM local. Primero se repasa que son los contenedores y por que son distintos de las maquinas virtuales. Despues se instala Docker, se exploran comandos, se ejecuta un servidor web y se construye una imagen personalizada. En esa primera mitad, el estudiante ve a los contenedores funcionando realmente, no solo como teoria.

La segunda mitad introduce Kubernetes con Minikube y kubectl. Eso permite levantar un cluster local, crear pods, trabajar con deployments y exponer servicios. Es un laboratorio especialmente valioso porque junta dos capas que suelen aprenderse separadas: el contenedor individual y el sistema que despues lo orquesta.

Lo mas interesante es que la practica hace visible la diferencia de escala. Docker te enseña a empaquetar y ejecutar. Kubernetes te enseña a declarar, replicar y sostener. Ver ambas cosas juntas, en el mismo ejercicio, ayuda muchisimo a ordenar la cabeza. Ya no son tecnologias de moda flotando en el aire, sino herramientas concretas que resuelven partes distintas de una misma cadena operativa.
EOF

write_txt "30 - Encuentro 24- Build & Package Manager Tools" <<'EOF'
Esta clase pone el foco en algo que a veces queda oculto por detras de otras herramientas, pero que es absolutamente central: el build y el empaquetado. Antes de desplegar, de firmar o de publicar, hay que producir un artefacto. Y ese artefacto tiene que ser reproducible, trazable y confiable.

La clase explica la diferencia entre construir, empaquetar y publicar, y despues recorre gestores de paquetes y motores de build en distintos ecosistemas. El mensaje no es memorizar todas las herramientas del mundo, sino entender que cada lenguaje y plataforma necesita declarar dependencias, resolver versiones, compilar cuando corresponde y generar productos listos para ser distribuidos. Ahi entran tambien SemVer, rangos de versiones y lockfiles, que ayudan a fijar comportamiento y evitar sorpresas en entornos distintos.

Despues aparece una capa todavia mas moderna: SBOM, licencias, firmas, SLSA y repositorios de artefactos. Esta parte cambia mucho la mirada, porque muestra que el artefacto no es solo un archivo que "funciona", sino una unidad que debe poder auditarse, rastrearse y verificarse. En resumen, la clase te enseña a mirar el build como el punto donde nace la confianza tecnica del resto del pipeline.
EOF

write_txt "31 - Encuentro 25- Harbor" <<'EOF'
Harbor entra en escena cuando el curso ya viene trabajando con imagenes, registries, CI/CD y seguridad, y justo por eso su rol se vuelve tan claro. La clase lo presenta como un registro de artefactos OCI, pero enseguida deja ver que no es solo un deposito de imagenes. Harbor funciona como una fuente de verdad con gobierno, seguridad, trazabilidad y politicas.

Uno de los conceptos mas importantes del encuentro es la diferencia entre tag y digest. El tag es comodo para humanos, pero mutable. El digest, en cambio, identifica el contenido de forma inmutable. Esa distincion parece tecnica, pero cambia por completo la manera de pensar despliegues confiables. A partir de ahi, la clase conecta Harbor con escaneo de vulnerabilidades, firmas, SBOM, auditoria y promocion segura entre entornos.

Tambien se trabaja su arquitectura logica en Kubernetes, su organizacion por proyectos y su integracion conceptual con CI/CD. Todo eso ayuda a comprender que Harbor no es un accesorio, sino una bisagra entre build y runtime. Es el lugar donde los artefactos se guardan, se evalua su calidad y se decide si merecen avanzar. Dicho simple, Harbor transforma el "guardar imagenes" en una practica mucho mas gobernada y profesional.
EOF

write_txt "32 - Encuentro 26- Calidad" <<'EOF'
Esta clase pone un mensaje muy fuerte sobre la mesa: la calidad no se agrega al final, se construye durante todo el ciclo de vida del software. Por eso el encuentro diferencia QA y QC, habla de calidad como codigo y ubica las pruebas, el analisis estatico, la seguridad y el rendimiento dentro del pipeline de CI/CD.

La parte de pruebas automatizadas ayuda a ordenar niveles de confianza: unitarias para piezas pequeñas, integracion para componentes que colaboran, funcionales o end to end para flujos completos y aceptacion para validar criterios de negocio. Pero la clase no se queda ahi. Tambien entra el control de calidad del codigo con linters, SonarQube, code smells, reviews y quality gates. Esa combinacion muestra que la calidad no es solo que una app "ande", sino que tambien sea mantenible, legible y segura.

El tramo final suma SAST, DAST, SCA, SBOM, firmas, pruebas de carga y metricas de mejora continua. Todo eso puede sonar amplio, pero la idea de fondo es muy clara: un pipeline serio no solo compila y prueba, tambien mide riesgos, evalua salud tecnica y sostiene decisiones objetivas. Cuando esa mirada se incorpora, la calidad deja de ser una tarea de ultimo momento y pasa a ser una propiedad transversal del sistema.
EOF

write_txt "33 - Encuentro 27- Práctica Profesional 5" <<'EOF'
Esta practica profesional integra varios bloques del curso alrededor de una aplicacion Node.js concreta. Arranca creando un proyecto con Express, pruebas unitarias y reglas de linting. Eso ya pone sobre la mesa una base importante: desarrollo, testing y calidad trabajando juntos desde el principio.

Despues la practica da un salto muy interesante hacia Docker con multi-stage builds y un registro local. Ahi se ve como una aplicacion deja de ser solo codigo fuente y empieza a transformarse en una imagen optimizada, portable y lista para circular por un pipeline. Luego aparece la automatizacion del flujo completo, con etapas definidas y ejecucion sin intervencion manual, que es justamente la logica de CI/CD llevada a un laboratorio real.

El cierre con Trivy y Apache Bench suma dos dimensiones muy valiosas: seguridad y performance. Es decir, no alcanza con que la imagen construya y la app responda; tambien importa saber si arrastra vulnerabilidades y como se comporta bajo carga. La gran riqueza de esta practica es esa integracion: desarrollo, calidad, contenedores, pipeline, seguridad y rendimiento dejan de ser temas dispersos y se convierten en un flujo unico que el estudiante puede ejecutar, observar y mejorar.
EOF

write_txt "34 - Encuentro 28- IA para desarrollo" <<'EOF'
Esta clase introduce la inteligencia artificial dentro del ciclo de vida del desarrollo de software, pero lo hace con una mirada muy aterrizada. No se trata de vender humo ni de imaginar que la IA va a reemplazar personas, sino de entender como puede actuar como asistente en programacion, analisis de codigo, pruebas y automatizacion dentro de un enfoque DevOps.

Primero se presenta la idea general: herramientas que ayudan a escribir codigo, sugerir estructuras, detectar patrones de error o generar pruebas. Ahi aparecen asistentes de codificacion como copilotos que aceleran tareas repetitivas y facilitan acceso a ejemplos. Pero enseguida la clase pone un freno sano: la IA puede equivocarse, puede sugerir malas practicas y puede inducir dependencia si se usa sin criterio.

Despues el recorrido se abre hacia analisis de codigo, pruebas automatizadas e integracion con CI/CD. Eso deja una imagen muy clara del valor real de estas tecnologias: mejorar velocidad, ampliar cobertura y sumar una capa mas de revision, sin perder el control humano. El cierre con riesgos, buenas practicas y gobernanza es especialmente importante, porque recuerda que toda herramienta poderosa necesita supervision, contexto y responsabilidad. En el fondo, la clase enseña a mirar la IA no como magia, sino como una nueva compañera de trabajo que hay que saber usar bien.
EOF

write_txt "35 - Encuentro 29- Terraform I" <<'EOF'
Terraform I abre el mundo de Infrastructure as Code, una de las ideas mas transformadoras de la administracion moderna. La clase explica que la infraestructura ya no necesita definirse a mano en consolas o scripts dispersos. Ahora puede describirse como codigo, versionarse, revisarse y repetirse con la misma disciplina que una aplicacion.

Terraform aparece como herramienta declarativa y multi-cloud. Eso significa dos cosas muy importantes. Primero, que en lugar de decir paso por paso como llegar a un resultado, describis el estado deseado y la herramienta calcula como alcanzarlo. Segundo, que no estas limitado a un solo proveedor. La clase aprovecha esto para compararlo con CloudFormation y Ansible, mostrando que cada herramienta tiene su lugar, pero que Terraform destaca por portabilidad, claridad y ecosistema.

Tambien se trabaja su instalacion, el uso del CLI y la idea de Terraform Cloud. Todo eso ayuda a ver que IaC no es solo un concepto elegante, sino una practica concreta que necesita herramientas, versionado, colaboracion y un modo de ejecucion responsable. Cuando el estudiante entiende esta clase, empieza a mirar la infraestructura como algo repetible, auditado y mucho menos artesanal.
EOF

write_txt "36 - Encuentro 30- Terraform II" <<'EOF'
La segunda clase de Terraform profundiza en piezas que vuelven realmente util a IaC en equipo. Primero aparece HCL, el lenguaje de configuracion con el que se describen recursos, variables, outputs y demas componentes. Entender HCL no es aprender a programar otra cosa desde cero, sino aprender a expresar infraestructura de una manera clara y declarativa.

Despues entran los providers, que son la puerta de Terraform hacia APIs externas como AWS, Azure, GCP o Kubernetes. Esa capa es la que hace real la promesa multi-cloud. Pero uno de los tramos mas importantes del encuentro es el archivo de estado. Ahi la clase muestra que Terraform no trabaja en el aire: necesita una referencia de la infraestructura actual para calcular cambios. Y ese estado, justamente por ser tan importante, trae riesgos si se guarda localmente sin cuidado.

Por eso el cierre con backends remotos como S3, Azure Blob Storage o Terraform Cloud resulta tan central. La clase enseña que IaC en serio no es solo escribir archivos .tf, sino tambien gestionar de manera segura y colaborativa la memoria del sistema. En otras palabras, Terraform II convierte una herramienta interesante en una practica mucho mas madura.
EOF

write_txt "37 - Encuentro 31- OpenTofu" <<'EOF'
OpenTofu entra como una evolucion muy actual dentro del ecosistema IaC. La clase explica que surge como un fork comunitario de Terraform a partir del cambio de licencia de HashiCorp, y eso lo vuelve un caso muy interesante para pensar tecnologia, gobernanza y codigo abierto al mismo tiempo.

Lo primero que deja claro el encuentro es que OpenTofu mantiene una altisima compatibilidad tecnica con Terraform. Usa HCL, conserva comandos familiares, trabaja con modulos y providers similares y permite migraciones bastante directas. Eso significa que no aparece como una revolucion que obliga a desaprender todo, sino como una continuidad con otra filosofia de licencia y comunidad.

Despues se trabajan instalacion, configuracion inicial, lockfiles, backends, estado y modularizacion. Y ahi se ve que OpenTofu no es solo una discusion politica sobre software libre, sino una herramienta practica que puede encajar en pipelines, proyectos existentes y flujos corporativos. En el fondo, esta clase ensancha la mirada del estudiante: aprender una tecnologia tambien implica entender quien la gobierna, bajo que reglas evoluciona y que margen de control conserva la comunidad sobre su futuro.
EOF

write_txt "38 - Encuentro 32- Práctica Profesional 6" <<'EOF'
Esta practica profesional junta Terraform, OpenTofu y AWS en un laboratorio orientado a Infrastructure as Code real. Primero se prepara el sistema e instala todo lo necesario: Terraform, OpenTofu y AWS CLI. Ese arranque ya transmite una idea importante: IaC no vive sola, convive con credenciales, herramientas de nube y un entorno bien preparado.

Despues se construye una configuracion completa, con variables, archivo principal y outputs, para desplegar infraestructura en AWS. Ahi el estudiante deja de ver a Terraform como un concepto y empieza a usarlo para crear recursos concretos, validar, planificar y aplicar cambios. La parte de verificacion, incluyendo pruebas de acceso y funcionamiento, es clave porque recuerda que desplegar no es el final, sino el comienzo de la comprobacion.

Finalmente aparece la migracion a OpenTofu, que es uno de los gestos mas interesantes del laboratorio. Permite demostrar compatibilidad, intercambiabilidad y continuidad entre herramientas. La practica cierra asi una idea muy fuerte: IaC no es solo automatizar infraestructura, sino hacerlo de manera portable, versionable y con capacidad de evolucionar entre ecosistemas sin empezar de cero cada vez.
EOF

write_txt "39 - Encuentro 33- Introducción a seguridad" <<'EOF'
Esta clase instala el marco mental de seguridad para todo lo que viene despues. En lugar de arrancar por listas de ataques, empieza por la triada CIA: confidencialidad, integridad y disponibilidad. Y eso es muy importante, porque te obliga a pensar la seguridad no como una coleccion de sustos tecnicos, sino como la proteccion de tres objetivos esenciales del sistema.

Luego aparecen amenazas y vulnerabilidades comunes, y la diferencia entre ambas deja de ser una sutileza academica. Las amenazas son quienes o que intentan dañar; las vulnerabilidades son las debilidades que lo permiten. Ahi entran SQLi, XSS, CSRF, SSRF, control de acceso roto, exposicion de datos y problemas de dependencias. La clase no busca que memorices siglas vacias, sino que desarrolles radar para reconocer sintomas, causas y mitigaciones primarias.

La parte de evaluacion de riesgos y SDLC seguro completa la mirada. No todo se puede arreglar al mismo tiempo, asi que hace falta priorizar por probabilidad e impacto. Y hace falta insertar la seguridad dentro del ciclo de vida, no pegarla al final. El cierre con OWASP ZAP suma la idea de DAST como observacion de la aplicacion en ejecucion. En resumen, esta clase te da vocabulario, criterio y estructura para empezar a hablar de seguridad con base y no solo con intuicion.
EOF

write_txt "40 - Encuentro 34- Seguridad Front End" <<'EOF'
Seguridad Front End pone el foco en algo que mucha gente subestima: el navegador es un entorno de ejecucion que no controlamos por completo, y por eso el cliente tiene una superficie de ataque enorme. La clase organiza ese panorama alrededor de tres amenazas muy conocidas, XSS, CSRF y clickjacking, y explica por que siguen siendo tan relevantes en aplicaciones modernas.

Lo mas valioso del encuentro es que no se queda en la descripcion del problema. Enseguida pasa a las defensas conceptuales: escape de salida por contexto, sanitizacion cuando hace falta interpretar HTML, CSP con nonce y strict-dynamic, Trusted Types, tokens anti-CSRF, cookies SameSite, Fetch Metadata y frame-ancestors para evitar embebidos maliciosos. Todo eso puede sonar tecnico, pero en el fondo responde siempre a la misma pregunta: como evitamos que el navegador haga o ejecute algo que no deberia.

La clase tambien suma HTTPS, HSTS, SRI y cabeceras complementarias, ademas de tooling como ESLint y Snyk dentro del flujo diario. Eso deja una leccion muy potente: la seguridad de front no se resuelve solo "programando con cuidado". Se sostiene con practicas de codigo, politicas del navegador, dependencias vigiladas y controles en CI/CD. Es una defensa en profundidad, no un unico truco.
EOF

write_txt "41 - Encuentro 35- Seguridad Back End" <<'EOF'
En seguridad Back End la conversacion se mueve al lado del servidor, donde viven la logica de negocio, las APIs y el acceso a datos. La clase parte de una idea sencilla pero fundamental: nunca hay que confiar ciegamente en la entrada, aunque venga de una interfaz propia. El servidor es quien finalmente debe validar, autorizar y proteger.

El encuentro recorre vulnerabilidades tipicas como inyeccion SQL, problemas de autenticacion y sesion, exposicion de datos sensibles y control de acceso roto. A partir de ahi, se conecta con practicas de proteccion de bases de datos, minimo privilegio, cifrado, gestion de secretos, logs seguros y observabilidad orientada a seguridad. Todo eso ayuda a ver que la defensa del back no depende de una sola libreria milagrosa, sino de muchas capas bien pensadas.

Tambien se trabaja la prevencion de SQLi con consultas parametrizadas y validacion de entradas, y se introducen herramientas como OWASP Dependency-Check y Burp Suite Community como apoyo dentro de un proceso seguro. La imagen final es muy clara: un back end serio no es solo uno que responde requests, sino uno que sabe decidir quien puede hacer que, con que datos, bajo que controles y con que evidencia.
EOF

write_txt "42 - Encuentro 36- Práctica Profesional 7" <<'EOF'
Esta practica profesional pone la seguridad de contenedores en un terreno completamente aplicado. El laboratorio gira alrededor de una pregunta muy concreta: como se valida que una imagen Docker no sea solo funcional, sino tambien razonablemente segura. Para responder eso, la practica combina Hadolint, npm audit, Trivy y la construccion de una imagen mas sana.

La comparacion entre un Dockerfile vulnerable y uno mas cuidado es especialmente didactica. Hace visible por que importa la imagen base, por que no conviene correr como root, por que las dependencias viejas son un problema y como pequenos cambios de construccion pueden reducir tamaño y superficie de ataque al mismo tiempo. De golpe, la seguridad deja de ser un discurso abstracto y se vuelve algo medible: cantidad de CVEs, severidades, salud del contenedor y buenas practicas de construccion.

Lo mejor de la practica es que cierra con la idea de pipeline de seguridad. Es decir, estas validaciones no deberian depender solo de que alguien se acuerde de correrlas. Deberian integrarse en un flujo automatizado. Esa es una leccion muy poderosa: la seguridad de contenedores no se resuelve al final del camino, sino que se incorpora dentro del mismo proceso de build y validacion.
EOF

write_txt "43 - Encuentro 37- Telemetría" <<'EOF'
Telemetria es una clase muy importante porque empieza a construir la mirada de observabilidad. La idea central es simple y enorme al mismo tiempo: un sistema necesita emitir datos sobre si mismo para que podamos entender que esta pasando sin conectarnos a ciegas y adivinar. Esos datos son metricas, logs y, mas adelante, trazas.

La clase distingue telemetria, monitoreo y observabilidad. La telemetria es la materia prima. El monitoreo usa parte de esa informacion para vigilar condiciones conocidas. Y la observabilidad es la capacidad de responder preguntas nuevas sobre el sistema usando las señales disponibles. Esa diferenciacion ayuda muchisimo porque ordena conceptos que suelen mezclarse.

Despues el encuentro se mete en metricas, tipos de metricas, series temporales, logs estructurados, Prometheus, instrumentacion de aplicaciones y Grafana para dashboards y analisis de tendencias. Todo eso conduce a una idea clave: medir no es juntar numeritos porque si, sino construir capacidad de diagnostico. Cuando una aplicacion se vuelve lenta o erratica, la telemetria bien diseñada te permite pasar de la intuicion al analisis. Y ese salto es fundamental en operaciones modernas.
EOF

write_txt "44 - Encuentro 38- Monitoreo" <<'EOF'
Esta clase toma la base de telemetria y la lleva a la disciplina del monitoreo como practica operativa. Primero responde una pregunta esencial: por que monitorear no es opcional. Un sistema sin monitoreo funciona a ciegas y se entera de los problemas cuando los usuarios ya estan sufriendo. En cambio, un sistema observado puede detectar degradaciones, sostener SLA y anticipar fallas.

La clase distingue monitoreo reactivo y proactivo, y esa diferencia es muy importante. El reactivo avisa cuando algo ya se rompio. El proactivo detecta señales tempranas y permite actuar antes. Luego el recorrido pasa por monitoreo de infraestructura, aplicaciones, experiencia de usuario y herramientas como Nagios, junto con su integracion conceptual con Prometheus y Grafana.

Lo valioso del encuentro es que muestra al monitoreo como una mezcla de medicion, criterio y accion. No se trata solo de llenar pantallas con graficos, sino de decidir que importa, donde poner umbrales, como evitar fatiga de alertas y como convertir datos en decisiones operativas. En otras palabras, monitorear bien es aprender a escuchar un sistema antes de que empiece a gritar.
EOF

write_txt "45 - Encuentro 39- Práctica Profesional 8" <<'EOF'
Esta practica profesional cierra muy bien el bloque de observabilidad porque convierte Prometheus, Grafana y Alertmanager en un stack concreto instalado y funcionando sobre Ubuntu. La propuesta es claramente de taller: descargar, configurar servicios, verificar acceso web, conectar piezas y empezar a mirar metricas reales.

Prometheus aparece como el recolector y almacen de metricas. Grafana como la capa visual donde esas metricas se vuelven paneles comprensibles. Y Alertmanager como el mecanismo que toma reglas y las convierte en notificaciones cuando algo se sale de lo esperado. La practica suma ademas Node Exporter para observar metricas del sistema, lo cual vuelve la experiencia mucho mas completa.

Mas alla de la instalacion paso a paso, el valor profundo del laboratorio esta en que te hace ver la observabilidad como un sistema conectado. Las metricas no viven aisladas. Se recolectan, se guardan, se visualizan y, si hace falta, disparan alertas. Cuando el estudiante termina esta practica, deja de pensar en monitoreo como una idea lejana y empieza a tener un stack funcional en la cabeza, con componentes, responsabilidades y flujo de datos muy claros.
EOF

write_txt "46 - Presentación de PIN" <<'EOF'
La presentacion del Proyecto Integrador Final cumple un rol muy especial dentro de la diplomatura, porque junta todas las piezas del recorrido y las convierte en un desafio unico. Hasta este punto, cada clase fue aportando herramientas, criterios y practicas. El PIN aparece para demostrar que esos aprendizajes no estaban aislados, sino pensados para converger en una propuesta mas completa.

Esta instancia no deberia vivirse como un examen sorpresa, sino como una oportunidad de articular. Articular significa conectar infraestructura, versionado, nube, automatizacion, contenedores, IaC, seguridad y observabilidad dentro de un caso coherente. El proyecto obliga a pasar de comprender temas por separado a diseñar una solucion con logica integral. Y ese es exactamente el tipo de salto que diferencia el estudio teorico de una experiencia mas profesional.

Tambien es una clase importante porque instala criterios de alcance, organizacion, entregables y presentacion. Es decir, no alcanza con hacer cosas tecnicamente correctas: tambien importa como se justifican, como se documentan y como se exponen. En el fondo, el PIN resume una idea muy potente de todo el programa: DevOps no es aprender herramientas de memoria, sino integrarlas con criterio para construir soluciones consistentes y defendibles.
EOF
