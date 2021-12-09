/*Queries that provide answers to the questions from all projects.*/

SELECT * FROM animals WHERE name LIKE '%mon%';
SELECT name FROM animals WHERE date_of_birth BETWEEN '2016-01-01' AND  '2019-01-01';
SELECT name FROM animals WHERE neutered like true;
SELECT name FROM animals WHERE neutered = true;
SELECT name FROM animals WHERE escape_attempts < 3;
