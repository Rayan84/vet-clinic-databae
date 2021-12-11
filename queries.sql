/*Queries that provide answers to the questions from all projects.*/

SELECT * FROM animals WHERE name LIKE '%mon';
SELECT name FROM animals WHERE date_of_birth BETWEEN '2016-01-01' AND  '2019-01-01';
SELECT name FROM animals WHERE neutered = true AND escape_attempts < 3;
SELECT date_of_birth FROM animals WHERE name = 'Agumon' OR name = 'Pikachu';
SELECT name, escape_attempts from animals WHERE weight_kg > 10.5;
SELECT * FROM animals WHERE neutered = true;
SELECT * FROM animals WHERE name != 'Gabumon';
SELECT * FROM animals WHERE weight_kg BETWEEN 10.4 AND 17.3;
BEGIN;
UPDATE animals SET species = 'unspecified';
ROLLBACK;
BEGIN;
UPDATE animals SET species = 'digimon' WHERE name LIKE '%mon';
UPDATE animals SET species = 'pokemon' WHERE species = '';
COMMIT;
BEGIN;
DELETE FROM animals;
ROLLBACK;
TABLE animals;
BEGIN;
DELETE FROM animals WHERE date_of_birth > '01-01-2022';
COMMIT;
BEGIN;
UPDATE animals SET weight_kg = weight_kg * -1;
ROLLBACK;
UPDATE animals SET weight_kg = weight_kg * -1 WHERE(weight_kg < 0);
COMMIT;
SELECT COUNT(*) FROM animals;
SELECT COUNT(*) FROM animals WHERE escape_attempts = 0;
SELECT AVG(weight_kg) FROM animals;
SELECT MAX(escape_attempts), neutered FROM animals GROUP BY animals.neutered;
SELECT species, MAX(weight_kg), MIN(weight_kg) FROM animals GROUP By animals.species;
SELECT species, AVG(escape_attempts) from animals WHERE date_of_birth BETWEEN '1990-01-01' AND '2000-01-01' GROUP BY animals.species;
SELECT * FROM animals JOIN owners ON animals.owners_id = 4;
SELECT * FROM animals JOIN species ON animals.species_id = 1;
SELECT animals.name AS animal_name, owners.full_name AS owner_name FROM owners LEFT JOIN animals ON owners.id = animals.owners_id;
SELECT species.name as species_type , COUNT(*) from animals JOIN species ON species.id = animals.species_id GROUP BY species_type;
SELECT owners.full_name AS owners_name, animals.name AS animal_name, species.name AS type
FROM animals
JOIN species ON species.id = animals.species_id
JOIN owners ON owners.id = animals.owners_id
WHERE species.name = 'Digimon' AND owners.full_name = 'Jennifer Orwell';
SELECT animals.name AS animal_name FROM animals
JOIN owners ON owners.id = animals.owners_id
WHERE animals.escape_attempts = 0 AND owners.full_name = 'Dean Winchester';
SELECT owners.full_name as owners_name , COUNT(animals.name) as animal_count from owners
LEFT JOIN animals ON owners.id = animals.owners_id
GROUP BY owners_name
ORDER BY animal_count DESC;

SELECT MAX(date_of_visit) FROM visits WHERE vet = 1;
SELECT COUNT(DISTINCT animal) FROM visits WHERE vet = 3;

SELECT vets.name, species.name
FROM vets
LEFT JOIN specializations ON specializations.vet = vets.id
LEFT JOIN species ON specializations.specialization = species.id;

SELECT name FROM animals JOIN visits ON visits.animal = animals.id WHERE visits.vet = 3 AND visits.date_of_visit BETWEEN '2020-04-01' AND '2020-08-30';

SELECT visits.animal as animal_visits, COUNT(*) from visits JOIN animals ON animals.id = visits.animal GROUP BY animal_visits;
SELECT species.name as species_type, COUNT(*) from animals JOIN species ON species.id = animals.species_id GROUP BY species_type;
SELECT visits.animal, COUNT(*) AS counted FROM visits GROUP BY visits.animal ORDER BY counted DESC, visits.animal LIMIT 1;
SELECT animals.name, vets.name, date_of_visit FROM visits JOIN animals ON animals.id = visits.animal JOIN vets ON vets.id = visits.vet WHERE vets.name = 'Maisy Smith' ORDER BY date_of_visit LIMIT 1;
SELECT animals.name, animals.date_of_birth, animals.escape_attempts, animals.neutered, animals.weight_kg, vets.name, vets.age, vets.date_of_graduation, visits.date_of_visit FROM visits JOIN animals ON visits.animal = animals.id JOIN vets ON vets.id = visits.vet ORDER BY date_of_visit DESC LIMIT 1;
SELECT vets.name, COUNT (date_of_visit) FROM vets LEFT JOIN visits ON vets.id = visits.vet LEFT JOIN specializations ON vets.id = specializations.vet WHERE specializations.specialization IS NULL GROUP BY vets.name;
SELECT species.name, COUNT(species.name)
FROM visits
JOIN animals ON animals.id = visits.animal
JOIN vets ON visits.vet = vets.id
JOIN species ON species.id = animals.species_id
WHERE vets.id = 2
GROUP BY species.name ORDER BY COUNT(species.name) DESC LIMIT 1;