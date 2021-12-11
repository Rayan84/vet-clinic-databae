/* Populate database with sample data. */

INSERT INTO animals VALUES (1, 'Agumon', DATE '2020-02-03', 0, true, 10.23kg);
INSERT INTO animals VALUES (2, 'Gabumon', DATE '2018-11-15', 2, true, 8);
INSERT INTO animals VALUES (3, 'Pikachu', DATE ' 2021-01-07', 1, false, 15.04);
INSERT INTO animals VALUES (4, 'Devimon', DATE ' 2017-05-12', 5, true, 11);
INSERT INTO animals VALUES (7, 'Charmander', DATE '2020-02-08', 0, false, 11);
INSERT INTO animals VALUES (8, 'Plantmon', DATE '2022-11-15', 2, true, 5.7);
INSERT INTO animals VALUES (9, 'Squirtl', DATE '1993-04-02', 3, false, 12.13);
INSERT INTO animals VALUES (10, 'Angemon', DATE '2005-06-12', 1, true, 45);
INSERT INTO animals VALUES (11, 'Boarmon', DATE '2005-06-07', 7, true, 20.4);
INSERT INTO animals VALUES (12, 'Blossom', DATE '1998-10-13', 3, true, 17);


INSERT INTO owners VALUES (DEFAULT, 'Sam Smith', 34);
INSERT INTO owners VALUES (DEFAULT, 'Jennifer Orwell, 19');
INSERT INTO owners VALUES (DEFAULT, 'Bob', 45);
INSERT INTO owners VALUES (DEFAULT, 'Melody Pond', 77);
INSERT INTO owners VALUES (DEFAULT, 'Dean Winchester', 14);
INSERT INTO owners VALUES (DEFAULT, 'Jodie Whittaker', 38);
INSERT INTO species VALUES (DEFAULT, 'Pokemon');
INSERT INTO species VALUES (DEFAULT, 'Digimon');
UPDATE animals SET species_id = 2 WHERE name LIKE '%mon';
UPDATE animals SET species_id = 1 WHERE name NOT LIKE '%mon';
UPDATE animals SET owners_id = 1 WHERE name LIKE 'Agumon';
UPDATE animals SET owners_id = 2 WHERE name LIKE 'Pikachu';
UPDATE animals SET owners_id = 3 WHERE name LIKE 'Plantmon';
UPDATE animals SET owners_id = 4 WHERE name LIKE ANY (ARRAY['Charmander', 'Squirtle', 'Blossom']);
UPDATE animals SET owners_id = 5 WHERE name LIKE ANY (ARRAY['Angemon', 'Boarmon']);

INSERT INTO vets VALUES (DEFAULT, 'William Tatcher', 45, '2000-04-23');
INSERT INTO vets VALUES (DEFAULT, 'Maisy Smith', 26, '2019-01-17');
INSERT INTO vets VALUES (DEFAULT, 'Stephanie Mendez', 64, '1981-05-04');
INSERT INTO vets VALUES (DEFAULT, 'Jack Harkness', 38, '2008-06-08');
INSERT INTO specializations VALUES (DEFAULT, 1, 1);
INSERT INTO specializations VALUES (DEFAULT, 3, 2);
INSERT INTO specializations VALUES (DEFAULT, 3, 1);
INSERT INTO specializations VALUES (DEFAULT, 4, 2);
INSERT INTO visits VALUES (DEFAULT, 1, 1, '2020-05-24');
INSERT INTO visits VALUES (DEFAULT, 1, 3, '2020-07-22');
INSERT INTO visits VALUES (DEFAULT, 2, 4, '2021-02-02');
INSERT INTO visits VALUES (DEFAULT, 3, 2, '2020-01-05');
INSERT INTO visits VALUES (DEFAULT, 3, 2, '2020-03-08');
INSERT INTO visits VALUES (DEFAULT, 3, 2, '2020-05-14');
INSERT INTO visits VALUES (DEFAULT, 4, 3, '2021-05-04');
INSERT INTO visits VALUES (DEFAULT, 5, 4, '2021-02-24');
INSERT INTO visits VALUES (DEFAULT, 6, 2, '2019-12-21');
INSERT INTO visits VALUES (DEFAULT, 6, 1, '2020-08-10');
INSERT INTO visits VALUES (DEFAULT, 6, 2, '2021-04-07');
INSERT INTO visits VALUES (DEFAULT, 7, 3, '2019-09-29');
INSERT INTO visits VALUES (DEFAULT, 8, 4, '2020-10-03');
INSERT INTO visits VALUES (DEFAULT, 8, 4, '2020-11-04');
INSERT INTO visits VALUES (DEFAULT, 9, 2, '2019-01-24');
INSERT INTO visits VALUES (DEFAULT, 9, 2, '2019-05-15');
INSERT INTO visits VALUES (DEFAULT, 9, 2, '2020-02-27');
INSERT INTO visits VALUES (DEFAULT, 9, 2, '2020-08-03');
INSERT INTO visits VALUES (DEFAULT, 10, 3, '2020-05-24');
INSERT INTO visits VALUES (DEFAULT, 10, 1, '2021-01-11');





















