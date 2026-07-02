# Guía de Estudio Integral: Fundamentos y Tecnologías de DevOps

Esta guía proporciona una síntesis exhaustiva de los conceptos, herramientas y arquitecturas que definen el ecosistema DevOps moderno. Está diseñada para facilitar el aprendizaje estructurado desde la infraestructura básica hasta la orquestación de contenedores y el diseño de sistemas distribuidos.

---

## 1. El Roadmap de DevOps y Prácticas de Ingeniería
El camino para convertirse en un ingeniero DevOps implica el dominio de múltiples disciplinas que permiten la entrega frecuente y confiable de aplicaciones.

### Áreas Principales del Roadmap 2026
*   **Control de Versiones (Git):** El núcleo de la colaboración. Todos los recursos, incluyendo el código de la aplicación y la infraestructura (IaC), se mantienen en repositorios (GitHub, GitLab, Bitbucket).
*   **Lenguajes de Programación:** Necesarios para escribir scripts de automatización. Los lenguajes sugeridos incluyen Python (legibilidad y consistencia), Go (concurrencia y compilación rápida) y JavaScript.
*   **Linux y Scripting:** La mayoría de los servidores operan en Linux. Es vital dominar el CLI (comandos como `ls`, `grep`, `chmod`, `ssh`) y lenguajes de scripting como Bash o PowerShell.
*   **Ciclo de Vida de Desarrollo de Software (SDLC):** Comprensión de metodologías ágiles como Scrum y prácticas de gestión de trabajo (Jira, Trello).

---

## 2. Redes y Seguridad (Networking)
La comunicación entre dispositivos es fundamental para la infraestructura en la nube.

### Conceptos Clave de Redes
*   **Modelo OSI:** Estructura de 7 capas que define la comunicación (desde la Física hasta la de Aplicación).
*   **Protocolos TCP/IP:** Un conjunto de reglas que definen cómo los dispositivos se comunican. TCP garantiza el orden y la entrega de paquetes; UDP es más ligero para streaming.
*   **Direccionamiento:** 
    *   **Dirección MAC:** Identificador único físico del dispositivo.
    *   **Dirección IP:** Etiqueta numérica para identificación y localización en la red.
    *   **Máscara de Subred:** Divide las direcciones IP en direcciones de red y de host.
*   **Dispositivos de Red:**
    *   **Router:** Conecta segmentos de red y dirige el tráfico (Capa 3).
    *   **Switch:** Conecta dispositivos en una LAN usando direcciones MAC (Capa 2).
    *   **Hub:** Retransmite datos a todos los puertos sin discriminación (Capa 1).
*   **NAT (Network Address Translation):** Traduce direcciones IP privadas locales a una dirección pública global para acceso a Internet.

---

## 3. Infraestructura, Sistemas Operativos y Virtualización

### Sistemas Operativos (OS)
Un OS gestiona la ejecución de programas, el uso de memoria y la interacción con el hardware.
*   **Proceso:** Un programa en ejecución. El planificador de la CPU determina qué proceso se ejecuta.
*   **Memoria Virtual:** Combina la RAM con espacio temporal en el disco (paging) para manejar cargas pesadas.
*   **Kernel:** La parte central del OS que asigna memoria, programa procesos y controla la CPU.

### Virtualización vs. Contenedores
*   **Hipervisor:** Software que crea y ejecuta máquinas virtuales (VM). Existen de tipo "bare-metal" (acceso directo al hardware) y "hosted" (sobre un OS).
*   **Contenedores (Docker):** Unidad estándar que empaqueta código y dependencias. A diferencia de las VM, los contenedores comparten el kernel del host, lo que los hace más ligeros.
*   **Orquestación (Kubernetes):** Automatiza el despliegue, escalado y gestión de contenedores. Componentes esenciales incluyen Pods, Nodes, Deployments y Services.

---

## 4. CI/CD y Automatización

### Integración y Entrega Continua
*   **CI (Integración Continua):** Práctica de integrar cambios de código frecuentemente, activando pruebas automáticas.
*   **CD (Despliegue Continuo):** Automatización de la entrega de aplicaciones a entornos de producción.
*   **Herramientas:** Jenkins, GitHub Actions, GitLab CI, Azure DevOps.

### Infraestructura como Código (IaC) y Gestión de Configuración
*   **IaC (Terraform):** Permite definir y aprovisionar infraestructura mediante archivos de configuración (YAML/JSON).
*   **Gestión de Configuración (Ansible, Puppet, Chef):** Garantiza que los sistemas estén en un estado deseado y predecible. Puppet utiliza una arquitectura primario-secundario, mientras que Ansible se destaca por su simplicidad.

---

## 5. Observabilidad y Monitoreo

### Stack de Monitoreo
*   **Prometheus:** Herramienta de código abierto para recolectar métricas de series temporales. Utiliza un modelo de "pull" y el lenguaje PromQL.
*   **Grafana:** Plataforma para visualizar y analizar métricas mediante tableros (dashboards).
*   **Elastic Stack (ELK):**
    *   **Elasticsearch:** Motor de búsqueda y analítica distribuido.
    *   **Logstash:** Pipeline de procesamiento de datos que recolecta, transforma y envía logs.
    *   **Kibana:** Interfaz de visualización para datos de Elasticsearch.
    *   **Beats:** Agentes ligeros que envían datos desde los clientes (ej. Filebeat para logs).

---

## 6. Cloud Computing y Almacenamiento

### Proveedores de Nube (AWS, Azure, GCP)
Ofrecen abstracción de infraestructura mediante APIs para gestionar servidores virtuales, redes y bases de datos.

### OpenStack (Nube Privada)
Proyecto para gestionar infraestructuras de cómputo, almacenamiento y red:
*   **Nova:** Gestión de instancias de cómputo.
*   **Neutron:** Networking como servicio.
*   **Cinder:** Almacenamiento de bloques.
*   **Keystone:** Identidad y autenticación.

### Tipos de Almacenamiento
| Tipo | Descripción | Ejemplo |
| :--- | :--- | :--- |
| **Bloque** | Dispositivos de almacenamiento dedicados. | Cinder, EBS. |
| **Archivo** | Estructura jerárquica de carpetas y archivos. | NFS, Dropbox. |
| **Objeto** | Datos divididos en objetos con metadatos; altamente escalable. | S3, Ceph RGW. |

---

## 7. Cuestionario de Repaso (Respuestas Cortas)

1.  **¿Qué es el "Three-way Handshake" en TCP?** Es el proceso de 3 pasos (SYN, SYN-ACK, ACK) para establecer una conexión de socket TCP entre cliente y servidor.
2.  **¿Cuál es la diferencia entre un Forward Proxy y un Reverse Proxy?** Un forward proxy actúa en nombre de los clientes para acceder a Internet; un reverse proxy intercepta peticiones externas para proteger y balancear carga hacia servidores internos.
3.  **¿Qué significa "Idempotencia" en automatización?** Es la propiedad de una operación que, sin importar cuántas veces se ejecute, siempre produce el mismo resultado final sin causar efectos secundarios adicionales.
4.  **¿Qué es un "Single Point of Failure" (SPOF)?** Un componente que, si falla, detiene el funcionamiento de todo el sistema por falta de redundancia.
5.  **¿Para qué sirve el algoritmo CRUSH en Ceph?** Permite a los clientes calcular directamente la ubicación de los datos (OSD) sin necesidad de consultar una tabla central de búsqueda, mejorando la escalabilidad.
6.  **¿Cuál es la diferencia entre escalabilidad vertical y horizontal?** La vertical añade recursos (CPU/RAM) a un servidor existente; la horizontal añade más servidores al sistema para trabajar como una unidad.

---

## 8. Temas de Exploración Profunda (Preguntas de Ensayo)

1.  **El Teorema CAP y los Sistemas Distribuidos:** Analice las limitaciones de consistencia, disponibilidad y tolerancia a particiones. ¿Por qué un sistema distribuido solo puede garantizar dos de estas tres propiedades simultáneamente?
2.  **Transición de Monolito a Microservicios:** Explique los beneficios de la arquitectura de microservicios en términos de resiliencia y despliegue independiente. ¿Cuáles son los desafíos operativos que introduce (latencia, consistencia de datos)?
3.  **Estrategias de Disaster Recovery (DR):** Compare los conceptos de Alta Disponibilidad (HA) y DR. Desarrolle un plan que incluya RTO (Recovery Time Objective) y RPO (Recovery Point Objective) utilizando infraestructura en la nube.
4.  **Seguridad en el Ciclo de Vida (DevSecOps):** Discuta cómo la integración de pruebas de seguridad (SAST/DAST) y la gestión de secretos (ej. HashiCorp Vault) transforma el pipeline tradicional de CI/CD.

---

## 9. Glosario de Términos

*   **API (Application Programming Interface):** Interfaz definida para permitir que el software acceda a datos y funcionalidades de forma controlada.
*   **APIPA:** Rango de direcciones IP (169.254.x.x) asignadas automáticamente cuando un servidor DHCP no es localizable.
*   **CDN (Content Delivery Network):** Red distribuida geográficamente de servidores proxy para entregar contenido web con baja latencia.
*   **DNS (Domain Name System):** Sistema que traduce nombres de dominio legibles por humanos a direcciones IP.
*   **Grok:** Filtro de Logstash usado para parsear texto no estructurado en datos estructurados mediante patrones.
*   **HSTS (HTTP Strict Transport Security):** Directiva de servidor que obliga a los navegadores a comunicarse solo a través de conexiones HTTPS cifradas.
*   **IaC (Infrastructure as Code):** Gestión y aprovisionamiento de infraestructura a través de código en lugar de procesos manuales.
*   **Latencia:** El tiempo que tarda la información en viajar desde su origen hasta su destino.
*   **OSD (Object Storage Daemon):** En Ceph, es el componente responsable de almacenar datos en un disco y atender peticiones de E/S.
*   **Sticky Sessions:** Técnica de balanceo de carga que encamina las peticiones de un usuario al mismo servidor durante toda la sesión mediante cookies.
*   **TTL (Time to Live):** Valor en un paquete IP que determina cuántos "saltos" (routers) puede realizar antes de ser descartado para evitar bucles infinitos.
*   **YAML:** Lenguaje de serialización de datos legible por humanos, ampliamente usado para archivos de configuración en DevOps.