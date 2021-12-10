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
    WEIGHT_KG DECIMAL,
);'

ALTER TABLE animals
ADD species text;