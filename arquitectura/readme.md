# Propuesta de Modelo de Entidad-Relación para Listados de Airbnb

## Introducción

Este proyecto se basa en una tabla proporcionada por el dataset público de Airbnb disponible en [OpenDataSoft](https://public.opendatasoft.com/explore/dataset/air-bnb-listings/table/?disjunctive.neighbourhood&disjunctive.column_10&disjunctive.city&q=Madrid&location=7,40.5931,-4.422&basemap=jawg.light). La tabla original contiene información detallada sobre listados de Airbnb en diversas ciudades, incluyendo Madrid.

El objetivo de esta propuesta es mejorar la escalabilidad del proyecto a través de un modelo de entidad-relación (ER) bien estructurado.

## Contenido:

### Archivos Incluidos

- **Practica_glovo.sql**: Script SQL con la estructura de la base de datos propuesta.
- **Proyecto_glovo.drawio**: Archivo con el diagrama del modelo ER.
- **Proyecto_glovo.jpg**: Imagen del diagrama del modelo ER.

### Carpeta: Arquitectura

La carpeta **arquitectura** contiene los elementos necesarios para entender y desarrollar la estructura del proyecto. Incluye diagramas y scripts SQL que definen las relaciones y entidades, facilitando así la escalabilidad y mantenimiento de la base de datos.

## Descripción del Modelo de Entidad-Relación

### Entidades y Atributos

1. **Accommodation**
   - `room_type_id`: Identificador único para el tipo de habitación.
   - `room_type`: Tipo de habitación (por ejemplo, casa entera, habitación privada).

2. **Listing**
   - `room_id`: Identificador único para cada listado.
   - `host_id`: Identificador del anfitrión del listado.
   - `room_type_id`: Clave foránea hacia Accommodation.
   - `coordinates_id`: Clave foránea hacia Coordinates.
   - `review_id`: Clave foránea hacia Review.
   - `availability_id`: Clave foránea hacia Availability.
   - `room_price`: Precio por noche de la habitación.
   - `minimum_nights`: Número mínimo de noches requeridas para la reserva.
   - `name`: Nombre del listado.

3. **Host**
   - `host_id`: Identificador único para cada anfitrión.
   - `rooms_rent_by_the_host`: Número de habitaciones que el anfitrión tiene en alquiler.

4. **Review**
   - `review_id`: Identificador único para cada conjunto de reseñas.
   - `number_of_reviews`: Número total de reseñas.
   - `date_last_review`: Fecha de la última reseña recibida.
   - `number_of_reviews_per_month`: Promedio de reseñas por mes.

5. **Availability**
   - `availability_id`: Identificador único para la disponibilidad.
   - `availability`: Estado de disponibilidad.
   - `updated_date`: Fecha de la última actualización de la disponibilidad.

6. **Coordinates**
   - `coordinates_id`: Identificador único para cada conjunto de coordenadas.
   - `latitude`: Latitud de la ubicación del listado.
   - `longitude`: Longitud de la ubicación del listado.
   - `neighbourhood_id`: Clave foránea hacia Neighbourhood.

7. **Neighbourhood**
   - `neighbourhood_id`: Identificador único para cada vecindario.
   - `neighbourhood`: Nombre del vecindario.

8. **Location**
   - `location_id`: Identificador único para cada ubicación.
   - `country`: País donde se encuentra el listado.
   - `city`: Ciudad donde se encuentra el listado.
   - `neighbourhood_id`: Clave foránea hacia Neighbourhood.

### Relaciones

- **Accommodation** a **Listing**: Relación de uno a muchos. Un tipo de habitación puede estar asociado con múltiples listados.
- **Host** a **Listing**: Relación de uno a muchos. Un anfitrión puede tener múltiples listados.
- **Coordinates** a **Listing**: Relación de uno a uno. Cada listado tiene un conjunto específico de coordenadas.
- **Review** a **Listing**: Relación de uno a uno. Cada listado tiene un conjunto único de reseñas.
- **Availability** a **Listing**: Relación de uno a uno. Cada listado tiene detalles específicos de disponibilidad.
- **Neighbourhood** a **Coordinates**: Relación de uno a muchos. Un vecindario puede incluir múltiples conjuntos de coordenadas.
- **Neighbourhood** a **Location**: Relación de uno a muchos. Un vecindario puede formar parte de múltiples ubicaciones.

## Mapeo de Atributos desde Excel

Se realizó un mapeo de los atributos de la tabla original de Excel a las entidades en el modelo ER, como se detalla a continuación:

- **Room ID** -> `room_id` (Listing)
- **Name** -> `name` (Listing)
- **Host ID** -> `host_id` (Host)
- **Neighbourhood** -> `neighbourhood` (Neighbourhood)
- **Room type** -> `room_type` (Accommodation)
- **Room Price** -> `room_price` (Listing)
- **Minimum nights** -> `minimum_nights` (Listing)
- **Number of reviews** -> `number_of_reviews` (Review)
- **Date last review** -> `date_last_review` (Review)
- **Number of reviews per month** -> `number_of_reviews_per_month` (Review)
- **Rooms rent by the host** -> `rooms_rent_by_the_host` (Host)
- **Availibility** -> `availability` (Availability)
- **Updated Date** -> `updated_date` (Availability)
- **City** -> `city` (Location)
- **Country** -> `country` (Location)
- **Coordinates** -> `latitude`, `longitude` (Coordinates)
- **Location** -> `location_id` (Location)

## Conclusión

Esta propuesta de modelo de entidad-relación proporciona una estructura organizada para los datos de los listados de Airbnb, garantizando relaciones claras y una gestión eficiente de la base de datos. Es una base sólida para construir plataformas similares a Airbnb, mejorando la recuperación y la integridad de los datos, además de facilitar la escalabilidad del proyecto.
