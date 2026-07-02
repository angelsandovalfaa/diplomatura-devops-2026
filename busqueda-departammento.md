Quiero que actúes como un asistente de investigación inmobiliaria y relevamiento de propiedades.

Tu tarea es buscar y analizar publicaciones de departamentos en venta en estas plataformas:

- https://www.argenprop.com/
- https://www.remax.com.ar/
- https://www.zonaprop.com.ar/
- https://mashogaresconbna.com.ar/

Objetivo:
Encontrar TODOS los departamentos en venta que cumplan con estas condiciones:

- Tipo de propiedad: Departamento
- Operación: Venta
- Precio máximo: USD 30.000
- Condición obligatoria: que la publicación indique de forma explícita que es “apto crédito hipotecario” o equivalente claramente verificable

Instrucciones de análisis:
1. Analizá cada publicación individualmente.
2. No incluyas una propiedad solo por su precio o ubicación: verificá bien que efectivamente diga “apto crédito hipotecario”.
3. Si una publicación no lo dice claramente, no la incluyas en la lista principal.
4. No inventes datos ni completes información faltante.
5. Si algún dato no está visible, indicá “No especificado”.
6. No pongas un límite máximo de resultados: devolvé todos los resultados válidos que encuentres.
7. Evitá duplicados entre plataformas.
8. Si una misma propiedad aparece en más de un sitio, dejá una sola entrada y aclaralo en observaciones.
9. Revisá bien el contenido del aviso, no solo el título.
10. Priorizá precisión por encima de velocidad.

Formato de salida requerido:
Generá archivos Markdown separados (uno por plataforma) dentro del proyecto:

- resultados_argenprop_apto_credito_hasta_30000.md
- resultados_remax_apto_credito_hasta_30000.md
- resultados_zonaprop_apto_credito_hasta_30000.md
- resultados_mashogares_apto_credito_hasta_30000.md
- resultados_buscadorprop_apto_credito_hasta_30000.md
- resultados_mitula_apto_credito_hasta_30000.md

Opcional adicional (recomendado): un consolidado general:
- resultados_departamentos_apto_credito_hasta_30000.md

Cada archivo por plataforma debe contener:

# [Nombre de la plataforma] - Departamentos aptos para crédito hipotecario hasta USD 30.000

## Fecha de relevamiento
[completar con fecha y hora actual exacta, formato: YYYY-MM-DD HH:MM (TZ)]

## Plataforma revisada
[nombre de la plataforma de ese archivo]

## Resultados encontrados

Por cada propiedad, incluir este bloque:

### [Título de la publicación o identificador]
- **Ubicación:** [barrio, ciudad, dirección si está disponible]
- **Precio:** [valor en USD]
- **Apto crédito hipotecario:** Sí
- **Plataforma:** [Argenprop / RE/MAX / Zonaprop / Más Hogares con BNA]
- **URL:** [link directo]
- **Observaciones:** [detalle breve relevante: ambientes, metros, estado, si hay datos faltantes, si estaba duplicada, etc.]

Regla estricta para URL:
- Usar URL absoluta y directa del aviso individual (no páginas de búsqueda ni home de portal).
- Verificar que abra correctamente al momento del relevamiento.
- Si la plataforma bloquea acceso automático pero la URL del aviso es válida, aclararlo en observaciones.

Además:
- Ordená los resultados por precio de menor a mayor si el dato está disponible.
- Si no encontrás resultados en una plataforma, igual debés generar su archivo `.md` con la leyenda “Sin resultados verificables” y detalle de qué filtros usaste.
- Al final del archivo agregá una sección:

## Resumen
- Total de propiedades encontradas: [número]
- Plataformas con resultados: [listar]
- Plataformas sin resultados: [listar]
- Observaciones generales: [comentarios sobre escasez de publicaciones, datos ambiguos, precios fuera de rango, etc.]

Importante:
- No me devuelvas solo el texto en consola.
- Creá efectivamente todos los archivos `.md` dentro del proyecto.
- Si ya existen, actualizalos con la nueva búsqueda.
- Buscar sí o sí en todas las plataformas listadas, sin excepción.
- Si una plataforma falla por bloqueo/timeout, dejar evidencia del intento en observaciones (fecha/hora, URL consultada, tipo de error).
- Si es necesario para cubrir todas las plataformas, dividir el trabajo en paralelo (un agente/subtarea por plataforma).
- Confirmame al final la ruta exacta de cada archivo guardado.

Última actualización del prompt: 2026-04-06
