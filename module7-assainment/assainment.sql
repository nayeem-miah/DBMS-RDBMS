-- Active: 1760089614932@@127.0.0.1@5432@conservation_db@public
-- ? create table rangers
CREATE TABLE rangers (
  ranger_id SERIAL PRIMARY KEY,
  name VARCHAR(50) NOT NULL,
  region VARCHAR(50) NOT NULL
);

-- ? create table species
CREATE TABLE species (
  species_id SERIAL PRIMARY KEY,
  common_name VARCHAR(50) NOT NULL,
  scientific_name VARCHAR(100),
  discovery_date DATE,
  conservation_status VARCHAR(30) DEFAULT 'Unknown'
);

-- ? create table sightings
CREATE TABLE sightings (
  sighting_id SERIAL PRIMARY KEY,
  ranger_id INT REFERENCES rangers(ranger_id),
  species_id INT REFERENCES species(species_id),
  sighting_time TIMESTAMP,
  location VARCHAR(100),
  notes TEXT
);

SELECT * from sightings;