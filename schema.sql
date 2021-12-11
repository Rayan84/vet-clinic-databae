/* Database schema to keep the structure of entire database. */

CREATE TABLE animals (
    name varchar(100)
);


psql -c 'CREATE TABLE animals (
    ID INT PRIMARY KEY NOT NULL,
    NAME TEXT NOT NULL,
    DATE_OF_BIRTH DATE NOT NULL,
    ESCAPE_ATTEMPTS INT,
    NEUTERED BOOLEAN NOT NULL,
    WEIGHT_KG DECIMAL
);'

ALTER TABLE animals
ADD species text;

psql -c 'CREATE TABLE owners (
    ID SERIAL PRIMARY KEY NOT NULL,
    FULL_NAME TEXT,
    AGE INT
);'

psql -c 'CREATE TABLE species (
    ID SERIAL PRIMARY KEY NOT NULL,
    NAME TEXT
);'

ALTER TABLE animals ADD SERIAL PRIMARY KEY (ID);
ALTER TABLE animals DROP species;
ALTER TABLE animals ADD species_id INT;
ALTER TABLE animals ADD FOREIGN KEY (species_id) REFERENCES species(id);
ALTER TABLE animals ADD owners_id INT;
ALTER TABLE animals ADD FOREIGN KEY (owners_id) REFERENCES owners(id);

