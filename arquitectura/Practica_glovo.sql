-- CREACION DE ESQUEMA

CREATE SCHEMA listings_airbnb;

set schema 'listings_airbnb';

--- CREACIÓN DE LAS TABLAS

-- Table: Accommodation
CREATE TABLE Accommodation (
    room_type_id SERIAL NOT NULL PRIMARY KEY,
    room_type VARCHAR(100) NOT NULL
);

-- Table: Host
CREATE TABLE Host (
    host_id INT NOT NULL PRIMARY KEY,
    rooms_rent_by_the_host INT NOT NULL
);

-- Table: Review
CREATE TABLE Review (
    review_id SERIAL NOT NULL PRIMARY KEY,
    number_of_reviews INT,
    date_last_review DATE,
    number_of_reviews_per_month DECIMAL
);

-- Table: Coordinates
CREATE TABLE Coordinates (
    coordinates_id SERIAL NOT NULL PRIMARY KEY,
    latitud NUMERIC,
    longitud NUMERIC,
    neighbourhood_id INT
);

-- Table: Neighbourhood
CREATE TABLE Neighbourhood (
    neighbourhood_id SERIAL NOT NULL PRIMARY KEY,
    neighbourhood VARCHAR(100) NOT NULL
);

-- Table: Location
CREATE TABLE Location (
    location_id SERIAL NOT NULL PRIMARY KEY,
    country VARCHAR(100) NOT NULL,
    city VARCHAR(100) NOT NULL,
    neighbourhood_id INT NOT NULL
);

-- Clave foránea para Neighbourhood en Location
ALTER TABLE Location
ADD CONSTRAINT fk_neighbourhood
FOREIGN KEY (neighbourhood_id) REFERENCES Neighbourhood(neighbourhood_id);

-- Clave foránea para Neighbourhood en Coordinates
ALTER TABLE coordinates
ADD CONSTRAINT fk_neighbourhood_coordinates
FOREIGN KEY (neighbourhood_id) REFERENCES Neighbourhood(neighbourhood_id);


-- Table: Availability
CREATE TABLE Availability (
    availability_id SERIAL NOT NULL PRIMARY KEY,
    availability INT NOT NULL,
    updated_date DATE
);

-- Table: Listing
CREATE TABLE Listing (
    room_id INT NOT NULL PRIMARY KEY,
    host_id INT NOT NULL,
    room_type_id INT NOT NULL,
    coordinates_id INT NOT NULL,
    review_id INT NOT NULL,
    room_price DECIMAL NOT NULL,
    minimum_nights INT NOT NULL,
    availability_id INT NOT NULL,
    name VARCHAR(100)
);

-- Clave foránea para Host en Listing
ALTER TABLE Listing
ADD CONSTRAINT fk_host
FOREIGN KEY (host_id) REFERENCES Host(host_id);

-- Clave foránea para RoomType en Listing
ALTER TABLE Listing
ADD CONSTRAINT fk_room_type
FOREIGN KEY (room_type_id) REFERENCES Accommodation(room_type_id);

-- Clave foránea para coordinates en Listing
ALTER TABLE Listing
ADD CONSTRAINT fk_coordinates
FOREIGN KEY (coordinates_id) REFERENCES Coordinates(coordinates_id);

-- Clave foránea para Reviews en Listing
ALTER TABLE Listing
ADD CONSTRAINT fk_reviews
FOREIGN KEY (review_id) REFERENCES Review(review_id);

-- Clave foránea para Availability en Listing
ALTER TABLE Listing
ADD CONSTRAINT fk_availability
FOREIGN KEY (availability_id) REFERENCES Availability(availability_id);

