-- recruteur
BEGIN;
INSERT INTO Personne (nom, prenom, email)
VALUES ('Cosendey', 'Eric', 'lbesencon@example.net');
INSERT INTO Recruteur (idPersonne)
VALUES ((SELECT MAX(id) FROM Personne));
COMMIT;

-- recruteur
BEGIN;
INSERT INTO Personne (nom, prenom, email)
VALUES ('Grosjean', 'Jean-Pierre', 'chatrianddavid@example.com');
INSERT INTO Recruteur (idPersonne)
VALUES ((SELECT MAX(id) FROM Personne));
COMMIT;

-- recruteur
BEGIN;
INSERT INTO Personne (nom, prenom, email)
VALUES ('Deladoëy', 'Jeanne', 'helenemercier@example.com');
INSERT INTO Recruteur (idPersonne)
VALUES ((SELECT MAX(id) FROM Personne));
COMMIT;

-- recruteur
BEGIN;
INSERT INTO Personne (nom, prenom, email)
VALUES ('Cattin', 'Lucie', 'bourquardsimone@example.org');
INSERT INTO Recruteur (idPersonne)
VALUES ((SELECT MAX(id) FROM Personne));
COMMIT;

-- recruteur
BEGIN;
INSERT INTO Personne (nom, prenom, email)
VALUES ('Meyer', 'René', 'pascal85@example.com');
INSERT INTO Recruteur (idPersonne)
VALUES ((SELECT MAX(id) FROM Personne));
COMMIT;

-- recruteur
BEGIN;
INSERT INTO Personne (nom, prenom, email)
VALUES ('Comment', 'Maria', 'annecorbat@example.com');
INSERT INTO Recruteur (idPersonne)
VALUES ((SELECT MAX(id) FROM Personne));
COMMIT;

-- recruteur
BEGIN;
INSERT INTO Personne (nom, prenom, email)
VALUES ('Matile', 'Françoise', 'besseclara@example.com');
INSERT INTO Recruteur (idPersonne)
VALUES ((SELECT MAX(id) FROM Personne));
COMMIT;

-- recruteur
BEGIN;
INSERT INTO Personne (nom, prenom, email)
VALUES ('Vienne', 'Nicolas', 'celinecornuz@example.net');
INSERT INTO Recruteur (idPersonne)
VALUES ((SELECT MAX(id) FROM Personne));
COMMIT;

-- recruteur
BEGIN;
INSERT INTO Personne (nom, prenom, email)
VALUES ('Besençon', 'Caroline', 'rmonnet@example.com');
INSERT INTO Recruteur (idPersonne)
VALUES ((SELECT MAX(id) FROM Personne));
COMMIT;

-- recruteur
BEGIN;
INSERT INTO Personne (nom, prenom, email)
VALUES ('Mercier', 'Jean-Claude', 'marie81@example.org');
INSERT INTO Recruteur (idPersonne)
VALUES ((SELECT MAX(id) FROM Personne));
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (-71.314512, 103.892238, 'avenue Rapraz 95',
        'Chaudet', '4841', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Vuille', 'Catherine', 'besanconnolan@example.com');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 24, 'Femme',
        '+41 49 876 98 12', 6, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (2, 'Finance') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (3, 'Marketing') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (11, 2, 'CFC');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (11, 3, 'Doctorat');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (-53.2941055, 123.629884, 'chemin Christine Bernasconi 65',
        'Comman-sur-Tinguely', '1464', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Vallélian', 'Ethan', 'emma43@example.net');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 44, 'Homme',
        '+41 21 033 35 81', 16, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (5, 'Enseignement') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (2, 'Finance') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (12, 5, 'Master');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (12, 2, 'Maturité Gymnasiale');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (-29.6015795, -108.912245, 'rue de Chevalley 3',
        'Beurret', '2434', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Rossellat', 'Nathalie', 'aevequoz@example.net');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 61, 'Homme',
        '+41 42 672 87 12', 10, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (4, 'Santé') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (2, 'Finance') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (13, 4, 'Master');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (13, 2, 'CFC');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (-65.498216, -11.828215, 'boulevard de Bonvin',
        'Blanc-Dessous', '1385', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Rosselet', 'Noah', 'carronsuzanne@example.net');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 19, 'Femme',
        '0846 504 415', 27, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (5, 'Enseignement') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (4, 'Santé') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (14, 5, 'Bachelor');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (14, 4, 'Bachelor');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (11.288413, -53.855825, 'avenue Sébastien Berberat 20',
        'Gubéran-la-Ville', '1662', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Mayor', 'Marcel', 'rosseletchantal@example.net');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 45, 'Autre',
        '+41 (0)65 837 42 73', 29, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (5, 'Enseignement') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (1, 'Developpement informatique') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (15, 5, 'Master');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (15, 1, 'Aucun');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (-63.5809435, -36.140781, 'rue Saudan 9',
        'Comte-près-Besançon', '9626', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Cattin', 'Sara', 'rmonnard@example.org');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 30, 'Autre',
        '+41 90 448 01 75', 15, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (3, 'Marketing') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (5, 'Enseignement') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (16, 3, 'Aucun');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (16, 5, 'Bachelor');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (32.5038185, -146.88366, 'chemin de Deshusses 3',
        'Aeby', '8314', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Candaux', 'Ana', 'georges29@example.net');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 44, 'Homme',
        '057 070 22 48', 39, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (1, 'Developpement informatique') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (4, 'Santé') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (17, 1, 'Bachelor');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (17, 4, 'CFC');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (44.719804, -94.018945, 'boulevard Lisa Carron 18',
        'Menthonnex-sur-Coigny', '7588', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Rossellat', 'Roger', 'cosandeychloe@example.com');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 23, 'Homme',
        '+41 (0)52 866 06 33', 14, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (5, 'Enseignement') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (4, 'Santé') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (18, 5, 'Master');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (18, 4, 'Doctorat');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (-72.5059145, -6.250428, 'rue Alice Cosendey 141',
        'Bourquin am Albis', '3876', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Chaudet', 'François', 'nsansonnens@example.net');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 21, 'Homme',
        '+41 91 470 41 27', 37, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (1, 'Developpement informatique') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (5, 'Enseignement') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (19, 1, 'CFC');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (19, 5, 'Doctorat');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (89.90918, 76.916907, 'rue Vonlanthen 68',
        'Bonvin-Dessous', '2212', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Blanc', 'Gabriel', 'pascal00@example.com');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 29, 'Homme',
        '+41 (0)97 136 91 33', 35, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (2, 'Finance') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (3, 'Marketing') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (20, 2, 'Maturité Gymnasiale');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (20, 3, 'Bachelor');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (-12.544295, -113.205601, 'rue Vallélian 349',
        'Courvoisier', '2716', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Bouvier', 'Paul', 'elodie09@example.com');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 45, 'Autre',
        '+41 (0)67 287 07 63', 21, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (3, 'Marketing') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (1, 'Developpement informatique') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (21, 3, 'Doctorat');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (21, 1, 'Doctorat');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (-71.650122, 112.39936, 'rue Bernard Jomini 75',
        'Chatriand', '1883', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Mayor', 'Jonathan', 'qniquille@example.org');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 28, 'Femme',
        '+41 (0)24 532 54 78', 35, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (5, 'Enseignement') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (2, 'Finance') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (22, 5, 'Maturité Gymnasiale');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (22, 2, 'Maturité Gymnasiale');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (-74.0043335, 170.85641, 'rue Christophe Maire 210',
        'Boechat', '7118', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Morard', 'Stéphane', 'mcarraux@example.org');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 27, 'Autre',
        '+41 54 446 42 92', 11, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (5, 'Enseignement') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (2, 'Finance') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (23, 5, 'Master');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (23, 2, 'Aucun');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (66.9289525, -8.59604, 'rue Barbey 9',
        'Dubey-sur-Rossellat', '8041', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Crevoisier', 'Marcel', 'stephanieisella@example.com');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 25, 'Autre',
        '+41 39 836 70 20', 22, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (4, 'Santé') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (2, 'Finance') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (24, 4, 'CFC');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (24, 2, 'Bachelor');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (1.2821015, -159.104995, 'boulevard Chaudet',
        'Rosselat-Dessus', '9273', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Montandon', 'Anna', 'samuelbonvin@example.org');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 57, 'Femme',
        '064 650 98 82', 20, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (4, 'Santé') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (2, 'Finance') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (25, 4, 'Maturité Gymnasiale');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (25, 2, 'Master');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (-66.468894, -38.948511, 'rue de Grand',
        'Martin', '4732', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Gubéran', 'Jean-Pierre', 'hugocoigny@example.com');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 25, 'Femme',
        '+41 (0)75 766 73 33', 38, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (1, 'Developpement informatique') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (5, 'Enseignement') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (26, 1, 'Aucun');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (26, 5, 'Bachelor');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (2.791173, 105.304116, 'avenue Bujard',
        'Badan-près-Blanc', '6093', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Peitrequin', 'Emma', 'patrick68@example.org');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 41, 'Homme',
        '+41 76 186 13 59', 6, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (5, 'Enseignement') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (1, 'Developpement informatique') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (27, 5, 'Master');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (27, 1, 'Doctorat');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (3.578325, 77.35625, 'rue Laurent Cattin 253',
        'Cornut', '3233', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Comte', 'Odette', 'noah54@example.net');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 26, 'Autre',
        '+41 (0)28 185 73 39', 6, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (2, 'Finance') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (5, 'Enseignement') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (28, 2, 'Aucun');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (28, 5, 'Aucun');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (67.372741, -133.127344, 'avenue Monique Berberat 97',
        'Rosselat-près-Grand', '7998', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Chapuis', 'Liliane', 'privetchristian@example.org');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 56, 'Autre',
        '+41 69 425 16 53', 38, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (4, 'Santé') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (5, 'Enseignement') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (29, 4, 'Master');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (29, 5, 'Maturité Gymnasiale');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (10.34999, -122.348254, 'rue Bouvier 64',
        'Piccand', '3842', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Deshusses', 'Raymond', 'laetitiacurdy@example.org');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 56, 'Autre',
        '083 950 86 21', 19, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (3, 'Marketing') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (2, 'Finance') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (30, 3, 'Bachelor');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (30, 2, 'Doctorat');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (-84.117123, -41.116312, 'chemin Fonjallaz 4',
        'Joly', '6973', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Müller', 'Loïc', 'boechatmarcel@example.com');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 37, 'Femme',
        '+41 73 414 95 27', 27, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (2, 'Finance') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (1, 'Developpement informatique') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (31, 2, 'Maturité Gymnasiale');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (31, 1, 'Master');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (-30.492347, 39.549926, 'boulevard Manon Candaux 57',
        'Monney (SO)', '7960', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Bovet', 'Jonathan', 'commanantonio@example.net');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 18, 'Femme',
        '026 123 68 54', 36, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (5, 'Enseignement') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (2, 'Finance') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (32, 5, 'Maturité Gymnasiale');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (32, 2, 'Maturité Gymnasiale');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (18.798691, 4.750165, 'avenue Céline Monnet',
        'Aebi am See', '6909', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Curdy', 'Lucie', 'sara52@example.org');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 44, 'Autre',
        '071 471 96 09', 1, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (3, 'Marketing') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (2, 'Finance') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (33, 3, 'Aucun');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (33, 2, 'Maturité Gymnasiale');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (-69.407191, 3.015235, 'boulevard de Duroux 25',
        'Duvanel', '8627', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Quartier', 'Chloé', 'irobert@example.com');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 58, 'Femme',
        '+41 97 488 09 14', 29, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (2, 'Finance') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (5, 'Enseignement') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (34, 2, 'Bachelor');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (34, 5, 'Doctorat');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (-63.2564585, -105.533759, 'rue Manuel Chatriant 78',
        'Duvanel', '6155', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Grand', 'Sandrine', 'julie71@example.net');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 56, 'Homme',
        '047 421 88 29', 24, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (1, 'Developpement informatique') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (5, 'Enseignement') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (35, 1, 'Maturité Gymnasiale');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (35, 5, 'Maturité Gymnasiale');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (-85.476357, -169.484189, 'rue Paul Wicht 75',
        'Gubéran', '8132', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Deshusses', 'Simone', 'tsansonnens@example.net');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 51, 'Femme',
        '+41 80 641 20 93', 20, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (4, 'Santé') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (5, 'Enseignement') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (36, 4, 'CFC');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (36, 5, 'Bachelor');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (86.9704785, 121.208209, 'chemin Bovet 5',
        'Saudan-près-Joye', '5039', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Dubey', 'Vanessa', 'francoisejoye@example.com');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 50, 'Autre',
        '+41 28 671 75 99', 18, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (2, 'Finance') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (3, 'Marketing') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (37, 2, 'Aucun');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (37, 3, 'Aucun');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (15.6788445, 54.7409, 'rue Nathan Comman 228',
        'Corpataux-des-Bois', '2213', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Grojean', 'Patrick', 'manon06@example.com');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 35, 'Autre',
        '067 949 24 21', 24, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (3, 'Marketing') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (2, 'Finance') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (38, 3, 'Aucun');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (38, 2, 'CFC');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (74.6735365, -56.609432, 'rue de Niquille 53',
        'Badel-Dessus', '7089', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Peitrequin', 'Anna', 'lilianefrancillon@example.org');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 44, 'Homme',
        '097 473 50 05', 4, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (2, 'Finance') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (3, 'Marketing') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (39, 2, 'CFC');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (39, 3, 'Maturité Gymnasiale');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (-8.348106, 149.751069, 'boulevard Emma Besençon 2',
        'Pellet', '5265', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Bochud', 'Claudine', 'badanmichel@example.com');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 38, 'Femme',
        '0906 422 885', 36, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (4, 'Santé') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (3, 'Marketing') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (40, 4, 'CFC');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (40, 3, 'Aucun');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (-41.639861, 173.077468, 'avenue Daniel Polla 4',
        'Bovet', '4767', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Bovet', 'Louis', 'ymusy@example.net');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 46, 'Autre',
        '+41 44 325 02 11', 7, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (1, 'Developpement informatique') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (3, 'Marketing') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (41, 1, 'Bachelor');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (41, 3, 'Maturité Gymnasiale');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (-32.7152865, 97.850181, 'rue Corinne Pellet 98',
        'Bahon', '9255', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Conrad', 'Madeleine', 'alain03@example.com');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 21, 'Homme',
        '+41 (0)46 126 75 45', 8, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (4, 'Santé') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (3, 'Marketing') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (42, 4, 'CFC');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (42, 3, 'Master');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (-25.283513, -114.955448, 'avenue de Cossy',
        'Müller-près-Cosandey', '2615', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Barbey', 'Michel', 'xromanens@example.net');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 31, 'Autre',
        '+41 (0)93 242 20 32', 36, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (5, 'Enseignement') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (4, 'Santé') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (43, 5, 'Maturité Gymnasiale');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (43, 4, 'Maturité Gymnasiale');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (-51.1432605, 113.363917, 'avenue Pierre Broquet 93',
        'Treboux am See', '4822', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Rappaz', 'Sébastien', 'crevoisierroland@example.net');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 46, 'Homme',
        '+41 67 493 01 37', 2, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (3, 'Marketing') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (2, 'Finance') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (44, 3, 'Maturité Gymnasiale');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (44, 2, 'Master');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (70.9611235, 120.031384, 'rue de Galland 6',
        'UnterPachoud', '7343', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Crivelli', 'Patrick', 'besanconolivier@example.com');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 18, 'Autre',
        '+41 82 503 16 94', 1, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (2, 'Finance') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (1, 'Developpement informatique') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (45, 2, 'Maturité Gymnasiale');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (45, 1, 'Doctorat');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (88.551076, 62.377051, 'boulevard Aeby 2',
        'Curdy-près-Peitrequin', '3918', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Botteron', 'Bruno', 'eva93@example.net');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 33, 'Homme',
        '+41 65 633 29 56', 17, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (4, 'Santé') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (1, 'Developpement informatique') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (46, 4, 'Master');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (46, 1, 'Master');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (-44.1146175, -37.247734, 'avenue Carraud 61',
        'Aeby', '1239', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Bonvini', 'Marcel', 'humbertsuzanne@example.com');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 22, 'Femme',
        '092 003 68 57', 5, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (4, 'Santé') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (2, 'Finance') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (47, 4, 'Doctorat');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (47, 2, 'Master');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (-2.085085, -168.829023, 'chemin Roland Rapraz 63',
        'Théraulaz-près-Boechat', '5119', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Monnet', 'Isabelle', 'martyelisa@example.com');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 24, 'Homme',
        '0906 081 219', 2, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (5, 'Enseignement') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (3, 'Marketing') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (48, 5, 'Master');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (48, 3, 'Master');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (-44.843314, 179.361735, 'avenue de Bonvin',
        'Rappaz-les-Bains', '3512', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Coigny', 'Bruno', 'tinguelyrobert@example.org');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 18, 'Femme',
        '0841 348 206', 17, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (4, 'Santé') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (2, 'Finance') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (49, 4, 'Master');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (49, 2, 'Bachelor');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (89.37394, 94.941261, 'chemin de Barbey 39',
        'Droz', '8874', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Chenaux', 'Mélanie', 'aurelie92@example.org');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 27, 'Femme',
        '+41 45 902 27 45', 7, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (3, 'Marketing') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (5, 'Enseignement') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (50, 3, 'Bachelor');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (50, 5, 'Master');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (75.543008, 138.688084, 'boulevard de Carraud 71',
        'Paschoud-la-Ville', '2012', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Diesbach', 'Michael', 'claudejoye@example.com');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 58, 'Autre',
        '+41 (0)64 756 41 59', 35, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (4, 'Santé') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (5, 'Enseignement') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (51, 4, 'Maturité Gymnasiale');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (51, 5, 'Maturité Gymnasiale');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (-11.96986, -26.015644, 'boulevard Uldry 45',
        'Bujard', '2258', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Rapraz', 'Bruno', 'lucas75@example.org');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 19, 'Autre',
        '+41 88 990 13 05', 12, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (1, 'Developpement informatique') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (4, 'Santé') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (52, 1, 'Maturité Gymnasiale');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (52, 4, 'Maturité Gymnasiale');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (-53.5408755, 5.621734, 'avenue Comman 10',
        'Piccand', '9121', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Cosandey', 'Sébastien', 'hugo62@example.net');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 62, 'Femme',
        '+41 (0)71 845 42 28', 3, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (5, 'Enseignement') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (4, 'Santé') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (53, 5, 'Maturité Gymnasiale');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (53, 4, 'Maturité Gymnasiale');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (70.5594835, -153.653729, 'avenue Aeby',
        'Morand (GR)', '9913', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Monnard', 'Mathieu', 'albert73@example.com');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 25, 'Autre',
        '+41 (0)70 855 74 79', 35, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (3, 'Marketing') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (2, 'Finance') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (54, 3, 'CFC');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (54, 2, 'Master');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (-0.6472095, 94.545941, 'boulevard Matteo Bonvin 43',
        'Rossellat-Dessous', '6273', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Fonjallaz', 'Jacqueline', 'brunobujard@example.com');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 47, 'Femme',
        '+41 (0)94 203 89 33', 16, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (3, 'Marketing') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (1, 'Developpement informatique') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (55, 3, 'Master');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (55, 1, 'Aucun');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (16.466913, 171.90512, 'rue Josiane Aeby 97',
        'San Bahon', '2030', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Sansonnens', 'Yvette', 'romanenseva@example.net');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 44, 'Homme',
        '+41 (0)99 396 96 11', 12, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (3, 'Marketing') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (1, 'Developpement informatique') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (56, 3, 'Master');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (56, 1, 'Master');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (3.5436205, 67.319679, 'avenue Treboux 60',
        'Niquille', '9944', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Dubey', 'Laura', 'fchevrolet@example.org');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 28, 'Femme',
        '096 195 91 35', 29, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (3, 'Marketing') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (4, 'Santé') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (57, 3, 'CFC');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (57, 4, 'Bachelor');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (78.642539, -0.303255, 'rue Müller 53',
        'Cattin-près-Brandt', '6274', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Cousin', 'Lisa', 'charleschopard@example.org');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 56, 'Femme',
        '+41 95 597 91 39', 12, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (3, 'Marketing') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (4, 'Santé') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (58, 3, 'Aucun');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (58, 4, 'Master');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (-37.717391, 172.175266, 'avenue Eliane Rosselat 71',
        'Jacot-Descombes', '1217', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Duvanel', 'Théo', 'boichatlara@example.com');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 29, 'Homme',
        '+41 (0)25 932 57 52', 11, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (4, 'Santé') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (5, 'Enseignement') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (59, 4, 'CFC');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (59, 5, 'Doctorat');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (-86.9488925, 131.171496, 'rue de Barillon',
        'Menthonnex', '6443', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Francillon', 'Lucie', 'lea48@example.com');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 47, 'Femme',
        '054 901 56 17', 13, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (5, 'Enseignement') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (3, 'Marketing') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (60, 5, 'CFC');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (60, 3, 'Doctorat');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (52.8087875, 6.875681, 'chemin Vincent Mercier 38',
        'Uldry am Albis', '6144', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Barman', 'François', 'beuchatlisa@example.org');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 26, 'Autre',
        '0901 802 897', 24, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (5, 'Enseignement') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (2, 'Finance') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (61, 5, 'CFC');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (61, 2, 'CFC');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (-31.059702, -123.048202, 'rue Droz 518',
        'Joye', '5219', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Monnard', 'Madeleine', 'candauxelisabeth@example.com');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 33, 'Femme',
        '+41 34 229 59 07', 1, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (4, 'Santé') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (5, 'Enseignement') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (62, 4, 'Maturité Gymnasiale');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (62, 5, 'CFC');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (-40.932987, -138.237528, 'chemin Kevin Chatriant',
        'Chatriand (GR)', '5120', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Carraux', 'Vanessa', 'pachoudsylvie@example.com');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 41, 'Autre',
        '+41 (0)72 181 18 99', 1, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (5, 'Enseignement') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (4, 'Santé') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (63, 5, 'Aucun');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (63, 4, 'Aucun');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (-32.4390025, -44.454337, 'avenue Eliane Nüsslin 95',
        'Chappuis-sur-Fonjallaz', '7580', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Bahon', 'Christine', 'ybarbey@example.com');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 38, 'Autre',
        '+41 (0)29 519 66 16', 31, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (2, 'Finance') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (3, 'Marketing') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (64, 2, 'Maturité Gymnasiale');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (64, 3, 'Bachelor');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (-86.368869, 129.697094, 'chemin Vienne 40',
        'Bochud (VS)', '8457', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Saudan', 'Chantal', 'wrosselat@example.com');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 48, 'Homme',
        '+41 (0)83 154 95 54', 39, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (3, 'Marketing') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (2, 'Finance') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (65, 3, 'CFC');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (65, 2, 'Aucun');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (-68.705242, -35.485874, 'chemin Jean Beuret 96',
        'Corboz-les-Bains', '1698', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Beurret', 'Françoise', 'camillebourquin@example.org');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 21, 'Homme',
        '+41 (0)26 413 46 85', 9, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (5, 'Enseignement') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (1, 'Developpement informatique') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (66, 5, 'Maturité Gymnasiale');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (66, 1, 'Maturité Gymnasiale');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (-32.7902405, 37.551477, 'chemin Nusslé',
        'UnterChapuis', '9243', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Menthonnex', 'Louis', 'elisa85@example.org');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 34, 'Femme',
        '+41 48 329 41 93', 3, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (3, 'Marketing') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (4, 'Santé') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (67, 3, 'CFC');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (67, 4, 'Master');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (87.626358, -123.069868, 'rue Léa Carraux 86',
        'Bovet-les-Bains', '7655', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Boechat', 'Odette', 'dprivet@example.net');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 34, 'Femme',
        '047 802 79 70', 15, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (1, 'Developpement informatique') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (4, 'Santé') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (68, 1, 'Bachelor');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (68, 4, 'Master');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (-3.7099175, 77.557949, 'rue Corinne Thorens',
        'Vuille-des-Bois', '5285', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Besse', 'Madeleine', 'yvette90@example.org');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 51, 'Homme',
        '+41 (0)99 105 80 49', 19, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (4, 'Santé') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (5, 'Enseignement') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (69, 4, 'Doctorat');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (69, 5, 'CFC');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (65.400283, -120.455936, 'chemin de Bugnon 51',
        'San Délèze', '8841', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Mercier', 'Jean-Claude', 'yvette50@example.org');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 19, 'Femme',
        '+41 (0)58 215 69 12', 8, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (5, 'Enseignement') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (3, 'Marketing') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (70, 5, 'Master');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (70, 3, 'Bachelor');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (42.3716935, 124.424767, 'rue de Cattin 8',
        'Vuille', '8115', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Pellet', 'Hugo', 'fpolla@example.org');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 43, 'Autre',
        '+41 30 627 68 56', 10, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (2, 'Finance') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (1, 'Developpement informatique') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (71, 2, 'Master');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (71, 1, 'Maturité Gymnasiale');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (4.564974, 37.759917, 'chemin Elodie Bovet 54',
        'Carraux-près-Mayor', '3169', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Charpié', 'Luca', 'yvonne57@example.net');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 41, 'Femme',
        '0878 027 228', 1, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (5, 'Enseignement') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (2, 'Finance') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (72, 5, 'Aucun');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (72, 2, 'Maturité Gymnasiale');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (64.472061, 98.726438, 'rue de Beguin 90',
        'Courvoisier', '6132', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Mottiez', 'Anna', 'gilbert42@example.com');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 42, 'Femme',
        '0901 974 098', 29, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (2, 'Finance') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (3, 'Marketing') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (73, 2, 'Aucun');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (73, 3, 'Maturité Gymnasiale');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (14.795622, -42.947244, 'rue Laurence Vienne',
        'Humbert (GL)', '6579', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Carraud', 'Simone', 'romanensmonique@example.org');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 50, 'Femme',
        '037 359 92 27', 0, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (3, 'Marketing') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (1, 'Developpement informatique') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (74, 3, 'Aucun');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (74, 1, 'Doctorat');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (44.7993255, 179.797626, 'boulevard Pascal Rossellat 15',
        'UnterMarti', '3079', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Rappaz', 'Henri', 'patricia47@example.org');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 53, 'Autre',
        '089 138 21 80', 36, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (3, 'Marketing') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (5, 'Enseignement') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (75, 3, 'Maturité Gymnasiale');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (75, 5, 'Aucun');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (-12.4593175, -6.79004, 'avenue Fabienne Saudan 50',
        'Vermeil-sur-Polla', '8434', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Badan', 'Laetitia', 'pierre52@example.net');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 34, 'Homme',
        '+41 (0)99 274 03 74', 40, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (5, 'Enseignement') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (2, 'Finance') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (76, 5, 'Maturité Gymnasiale');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (76, 2, 'CFC');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (-45.569585, 153.698404, 'boulevard Laurent Chatriand 320',
        'Bavaud am Albis', '7138', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Pellet', 'Roger', 'jolylaurence@example.org');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 58, 'Autre',
        '+41 (0)71 425 00 64', 4, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (5, 'Enseignement') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (1, 'Developpement informatique') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (77, 5, 'Aucun');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (77, 1, 'Master');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (-16.519892, 87.574314, 'rue Humbert 38',
        'Brahier-la-Ville', '6400', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Robert', 'François', 'lara83@example.com');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 24, 'Homme',
        '030 646 70 57', 32, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (1, 'Developpement informatique') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (2, 'Finance') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (78, 1, 'Master');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (78, 2, 'CFC');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (-30.2315465, -86.519415, 'rue Béguelin 42',
        'Marti-près-Carraux', '4923', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Beurret', 'Marcelle', 'bujardzoe@example.org');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 34, 'Femme',
        '057 925 27 18', 17, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (1, 'Developpement informatique') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (4, 'Santé') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (79, 1, 'CFC');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (79, 4, 'Maturité Gymnasiale');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (10.016787, -24.220889, 'boulevard de Théraulaz 357',
        'Humbert-près-Carraud', '8252', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Joye', 'Nicole', 'patrick25@example.com');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 24, 'Femme',
        '+41 40 956 55 96', 22, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (2, 'Finance') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (1, 'Developpement informatique') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (80, 2, 'CFC');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (80, 1, 'Maturité Gymnasiale');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (9.9236535, 141.55269, 'rue Boillat 4',
        'Carraux-sur-Duvanel', '8837', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Mottet', 'Ethan', 'mmottet@example.net');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 38, 'Homme',
        '+41 (0)62 879 68 59', 38, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (3, 'Marketing') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (4, 'Santé') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (81, 3, 'Doctorat');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (81, 4, 'Aucun');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (81.490433, -125.803724, 'avenue Manon Chatriand 1',
        'Sainte Rey', '3524', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Uldry', 'Sara', 'kevinisella@example.org');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 26, 'Autre',
        '072 316 39 94', 35, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (1, 'Developpement informatique') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (3, 'Marketing') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (82, 1, 'CFC');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (82, 3, 'CFC');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (-46.9587905, 76.889025, 'rue Bavaud 504',
        'de Dardel', '1683', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Cornut', 'Jean-Claude', 'piccandnoah@example.com');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 26, 'Autre',
        '+41 52 299 58 67', 25, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (5, 'Enseignement') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (2, 'Finance') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (83, 5, 'Master');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (83, 2, 'Master');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (39.930892, 128.580559, 'chemin Danielle Bahon 11',
        'Comman an der Aare', '3055', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Vallélian', 'Marianne', 'philippe88@example.net');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 59, 'Femme',
        '0878 320 941', 39, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (1, 'Developpement informatique') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (3, 'Marketing') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (84, 1, 'Bachelor');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (84, 3, 'Maturité Gymnasiale');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (68.160382, 26.32598, 'boulevard Bonvini 1',
        'Pellet', '1609', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Cosendey', 'Thomas', 'eaeby@example.org');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 29, 'Autre',
        '076 590 76 73', 9, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (2, 'Finance') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (3, 'Marketing') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (85, 2, 'Maturité Gymnasiale');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (85, 3, 'Maturité Gymnasiale');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (89.9472445, 145.819135, 'boulevard Madeleine Uldry 60',
        'Bavaud', '6816', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Babey', 'Mathieu', 'chatriandaurelie@example.net');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 46, 'Femme',
        '094 742 80 27', 24, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (5, 'Enseignement') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (1, 'Developpement informatique') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (86, 5, 'Doctorat');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (86, 1, 'Master');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (27.5468185, 98.88228, 'boulevard de Polla 83',
        'Morard-la-Ville', '1971', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Humbert', 'Danielle', 'michael36@example.net');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 22, 'Autre',
        '+41 (0)74 685 03 18', 13, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (4, 'Santé') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (5, 'Enseignement') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (87, 4, 'Bachelor');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (87, 5, 'Master');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (-39.6826715, -126.696509, 'chemin Coigny 26',
        'San Bovet', '5325', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Cretton', 'Georges', 'marianne56@example.org');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 62, 'Femme',
        '0878 866 460', 26, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (4, 'Santé') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (5, 'Enseignement') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (88, 4, 'Aucun');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (88, 5, 'Bachelor');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (-81.563356, 53.311406, 'rue Manuel Vallélian 359',
        'Privet-sur-Godet', '1286', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Galland', 'Matteo', 'taebi@example.com');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 30, 'Autre',
        '+41 (0)25 906 35 15', 23, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (4, 'Santé') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (1, 'Developpement informatique') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (89, 4, 'Aucun');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (89, 1, 'Maturité Gymnasiale');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (6.102551, 147.037826, 'rue Pascal Niquille',
        'Pasquier-Dessus', '5258', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Barillon', 'Eva', 'schenaux@example.net');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 37, 'Autre',
        '+41 (0)60 639 79 82', 22, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (5, 'Enseignement') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (1, 'Developpement informatique') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (90, 5, 'CFC');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (90, 1, 'Maturité Gymnasiale');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (3.752554, -93.224998, 'chemin Fabienne Nüsslin',
        'Curdy am Albis', '9646', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Gubéran', 'Olivier', 'jonathan74@example.net');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 31, 'Autre',
        '+41 (0)21 558 41 53', 27, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (4, 'Santé') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (2, 'Finance') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (91, 4, 'Doctorat');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (91, 2, 'Master');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (89.222811, -117.440664, 'rue de Grand 722',
        'Corbat-Dessous', '9906', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Galland', 'Zoé', 'maxime85@example.org');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 55, 'Femme',
        '079 259 57 52', 32, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (3, 'Marketing') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (1, 'Developpement informatique') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (92, 3, 'Maturité Gymnasiale');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (92, 1, 'Doctorat');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (11.723743, -49.124939, 'chemin Pellet 850',
        'Duroux am Rhein', '3004', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Bonvini', 'Sandrine', 'laetitia00@example.com');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 30, 'Femme',
        '+41 (0)69 236 99 40', 28, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (5, 'Enseignement') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (4, 'Santé') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (93, 5, 'Doctorat');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (93, 4, 'Aucun');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (-63.301866, -24.29864, 'boulevard Elisabeth Corboz 62',
        'Morand', '2632', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Isella', 'Elisabeth', 'uwicht@example.net');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 64, 'Femme',
        '+41 59 730 88 79', 31, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (4, 'Santé') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (1, 'Developpement informatique') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (94, 4, 'Maturité Gymnasiale');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (94, 1, 'Bachelor');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (-72.1517255, -36.082616, 'chemin de Julliard 73',
        'OberGrosjean', '6860', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Jomini', 'Simone', 'ibochud@example.org');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 22, 'Femme',
        '023 468 05 87', 30, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (3, 'Marketing') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (4, 'Santé') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (95, 3, 'Bachelor');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (95, 4, 'CFC');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (-22.2276355, -126.005698, 'boulevard Vincent Cornut 74',
        'Blanc-sur-Balmat', '6420', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Beuchat', 'Marguerite', 'bernardberberat@example.org');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 60, 'Autre',
        '024 005 91 16', 9, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (3, 'Marketing') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (4, 'Santé') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (96, 3, 'Maturité Gymnasiale');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (96, 4, 'Doctorat');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (20.5258445, -144.363025, 'rue Cornut 65',
        'Droz am See', '3275', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Vonlanthen', 'Nelly', 'crevoisiersarah@example.org');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 25, 'Autre',
        '0906 471 149', 6, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (1, 'Developpement informatique') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (5, 'Enseignement') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (97, 1, 'CFC');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (97, 5, 'Bachelor');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (-87.8478685, 141.205217, 'chemin Gubéran',
        'Charpié', '1031', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Diesbach', 'Alice', 'zoedeshusses@example.com');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 20, 'Autre',
        '+41 64 864 52 02', 13, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (4, 'Santé') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (3, 'Marketing') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (98, 4, 'Maturité Gymnasiale');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (98, 3, 'Master');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (-17.131653, 38.789688, 'chemin Joly 41',
        'Wicht am See', '3540', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Aeby', 'Manon', 'hprivet@example.org');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 65, 'Autre',
        '0901 699 546', 12, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (2, 'Finance') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (5, 'Enseignement') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (99, 2, 'Master');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (99, 5, 'Maturité Gymnasiale');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (-32.3720715, -34.427965, 'chemin Jean-Pierre Cretton 3',
        'Chatriand-sur-Wicht', '6456', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Cornuz', 'Corinne', 'bernard19@example.net');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 32, 'Homme',
        '0900 398 520', 0, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (2, 'Finance') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (3, 'Marketing') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (100, 2, 'CFC');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (100, 3, 'Maturité Gymnasiale');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (-47.475028, -6.820218, 'rue de Carraud 14',
        'Montandon', '9326', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Montandon', 'Marguerite', 'beguinsuzanne@example.org');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 46, 'Homme',
        '+41 (0)65 756 30 32', 0, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (2, 'Finance') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (1, 'Developpement informatique') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (101, 2, 'Maturité Gymnasiale');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (101, 1, 'Master');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (-23.3275245, -86.693533, 'chemin Joly 25',
        'Mottiez (SG)', '9493', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Wicht', 'Marianne', 'smuriset@example.org');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 36, 'Femme',
        '+41 48 830 08 74', 4, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (1, 'Developpement informatique') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (5, 'Enseignement') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (102, 1, 'Maturité Gymnasiale');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (102, 5, 'Bachelor');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (8.377616, 138.352916, 'chemin de Carraux',
        'Mercier am See', '9244', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Bouvier', 'Elisa', 'evade-dardel@example.net');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 61, 'Autre',
        '064 479 13 54', 12, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (3, 'Marketing') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (5, 'Enseignement') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (103, 3, 'CFC');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (103, 5, 'Doctorat');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (-24.0829355, -8.646409, 'boulevard de Martin 4',
        'Dubey-sur-Alber', '8152', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Humbert', 'Fabienne', 'paulcosendey@example.net');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 27, 'Homme',
        '073 321 12 71', 12, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (1, 'Developpement informatique') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (2, 'Finance') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (104, 1, 'Doctorat');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (104, 2, 'Aucun');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (-18.334097, -23.220837, 'rue de Cornut 21',
        'Corbat', '6762', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Duvanel', 'Claudine', 'gabrieldroz@example.net');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 53, 'Autre',
        '+41 96 325 06 50', 29, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (1, 'Developpement informatique') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (2, 'Finance') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (105, 1, 'Master');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (105, 2, 'Maturité Gymnasiale');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (-22.090837, -123.942812, 'rue Bernasconi 62',
        'Aebi-près-Nüsslin', '2694', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Pasquier', 'Elodie', 'tinguelyjose@example.com');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 29, 'Femme',
        '020 280 99 15', 28, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (1, 'Developpement informatique') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (3, 'Marketing') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (106, 1, 'Maturité Gymnasiale');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (106, 3, 'CFC');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (13.1088895, -5.747093, 'boulevard Gilbert Bujard 780',
        'Droz-la-Ville', '1451', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Pellet', 'Danielle', 'veronique97@example.net');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 20, 'Autre',
        '0901 512 272', 25, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (4, 'Santé') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (2, 'Finance') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (107, 4, 'Doctorat');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (107, 2, 'Bachelor');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (82.399535, 138.47578, 'rue Nicolas Rappaz 51',
        'Delèze (GR)', '5485', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Godet', 'Laura', 'fpiccand@example.org');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 51, 'Femme',
        '+41 (0)85 773 87 82', 32, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (5, 'Enseignement') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (4, 'Santé') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (108, 5, 'Bachelor');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (108, 4, 'CFC');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (-5.158146, -71.32054, 'boulevard de Montandon 6',
        'UnterRobert', '5679', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Müller', 'Christine', 'claudemeyer@example.net');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 18, 'Homme',
        '088 298 97 75', 24, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (3, 'Marketing') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (1, 'Developpement informatique') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (109, 3, 'Bachelor');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (109, 1, 'Aucun');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (-15.8596785, 29.753791, 'avenue Brandt 83',
        'Vallélian-sur-Botteron', '7965', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Menthonnex', 'Gabriel', 'bgrand@example.net');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 21, 'Femme',
        '+41 45 454 90 02', 11, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (5, 'Enseignement') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (2, 'Finance') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (110, 5, 'Bachelor');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (110, 2, 'Master');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (46.9751545, -10.439385, 'rue Théraulaz 41',
        'OberBovet', '6418', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Privet', 'Sara', 'robadeyrobert@example.org');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 28, 'Autre',
        '0878 218 424', 37, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (3, 'Marketing') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (1, 'Developpement informatique') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (111, 3, 'Aucun');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (111, 1, 'Master');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (-81.1466575, -147.251175, 'rue de Peitrequin 49',
        'Treboux (GR)', '4428', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Béguelin', 'Roland', 'jean94@example.org');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 49, 'Autre',
        '+41 (0)22 181 51 22', 25, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (2, 'Finance') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (4, 'Santé') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (112, 2, 'CFC');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (112, 4, 'Bachelor');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (-24.277882, -131.461536, 'rue Balmat 63',
        'Bovet', '7316', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Chatriand', 'Roger', 'theresejoly@example.org');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 20, 'Femme',
        '+41 (0)87 974 68 09', 20, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (3, 'Marketing') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (2, 'Finance') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (113, 3, 'CFC');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (113, 2, 'Master');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (-29.959895, 151.760524, 'chemin Bovet 63',
        'Musy', '4445', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Rappaz', 'Maria', 'zgeorges@example.net');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 53, 'Homme',
        '+41 (0)81 960 80 59', 31, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (2, 'Finance') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (5, 'Enseignement') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (114, 2, 'CFC');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (114, 5, 'Bachelor');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (44.93881, -110.424102, 'rue Josiane Beuchat 29',
        'Saint Babey', '7204', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Bernasconi', 'Antonio', 'berberatmarcel@example.com');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 42, 'Autre',
        '061 278 56 90', 26, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (5, 'Enseignement') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (2, 'Finance') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (115, 5, 'CFC');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (115, 2, 'Maturité Gymnasiale');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (-46.101854, -47.264824, 'avenue Frédéric Droz 71',
        'Rapin', '8981', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Bochud', 'Christine', 'viennenicolas@example.com');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 25, 'Femme',
        '+41 (0)95 211 21 82', 35, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (4, 'Santé') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (5, 'Enseignement') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (116, 4, 'CFC');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (116, 5, 'CFC');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (24.987672, 137.151979, 'rue de Bavaud 1',
        'Chenaux', '7650', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Treboux', 'Robert', 'zoejoly@example.org');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 38, 'Autre',
        '055 250 21 29', 3, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (3, 'Marketing') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (5, 'Enseignement') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (117, 3, 'Aucun');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (117, 5, 'Bachelor');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (49.3874905, -151.015385, 'rue Vallélian',
        'Comment', '7936', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Cossy', 'Noah', 'christiancomte@example.net');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 38, 'Autre',
        '+41 (0)54 215 58 54', 13, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (2, 'Finance') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (4, 'Santé') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (118, 2, 'CFC');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (118, 4, 'CFC');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (1.7249235, -107.446816, 'rue Emma Carraud 32',
        'Godet am Albis', '4302', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Marty', 'Michael', 'maxime82@example.org');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 42, 'Homme',
        '+41 91 699 60 64', 27, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (3, 'Marketing') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (2, 'Finance') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (119, 3, 'Bachelor');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (119, 2, 'CFC');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (35.6710155, -1.267545, 'chemin de Paccot 23',
        'Vuille am See', '1806', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Cossy', 'Sarah', 'isabellefrancillon@example.net');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 28, 'Femme',
        '082 353 03 78', 0, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (4, 'Santé') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (1, 'Developpement informatique') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (120, 4, 'Aucun');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (120, 1, 'Bachelor');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (-55.0342215, 120.483325, 'avenue Jonathan Gubéran 79',
        'Rossellat', '9701', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Fonjallaz', 'Sara', 'trebouxpatricia@example.org');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 19, 'Femme',
        '+41 (0)89 732 50 85', 6, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (4, 'Santé') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (1, 'Developpement informatique') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (121, 4, 'CFC');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (121, 1, 'Master');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (-43.383069, 30.309445, 'boulevard de Francillon 1',
        'Gilliéron am Albis', '7616', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Joly', 'Fabienne', 'krosselet@example.com');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 41, 'Autre',
        '028 838 36 50', 0, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (3, 'Marketing') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (1, 'Developpement informatique') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (122, 3, 'Doctorat');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (122, 1, 'Maturité Gymnasiale');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (20.5170735, -94.87307, 'boulevard Frédéric Badel 44',
        'Bonvini-près-Diesbach', '8165', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Mottet', 'Véronique', 'charles70@example.org');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 57, 'Homme',
        '091 218 69 57', 14, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (3, 'Marketing') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (2, 'Finance') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (123, 3, 'Maturité Gymnasiale');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (123, 2, 'CFC');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (67.6989095, -178.211539, 'boulevard Fabienne Gillièron',
        'Pasquier-Dessus', '1741', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Chevalley', 'Eliane', 'bernasconicharles@example.org');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 30, 'Homme',
        '072 308 34 42', 21, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (1, 'Developpement informatique') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (3, 'Marketing') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (124, 1, 'Bachelor');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (124, 3, 'Bachelor');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (51.6002585, 140.494756, 'chemin Thomas Rapin 34',
        'Maire', '6299', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Uldry', 'Arthur', 'musymichael@example.com');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 51, 'Autre',
        '+41 (0)66 153 16 48', 1, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (5, 'Enseignement') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (2, 'Finance') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (125, 5, 'Bachelor');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (125, 2, 'Master');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (-39.287818, -132.744347, 'rue Chopard 4',
        'Galland', '5307', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Boichat', 'Sandra', 'xpachoud@example.com');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 50, 'Homme',
        '0900 246 251', 18, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (5, 'Enseignement') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (3, 'Marketing') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (126, 5, 'Master');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (126, 3, 'Maturité Gymnasiale');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (-83.2532635, 110.713947, 'chemin Vermeil',
        'Besançon', '6051', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Maire', 'Valérie', 'elisa85@example.net');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 24, 'Autre',
        '084 970 60 41', 19, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (2, 'Finance') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (5, 'Enseignement') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (127, 2, 'CFC');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (127, 5, 'CFC');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (4.611207, 31.028532, 'chemin Martin 38',
        'Pellet-près-Beurret', '2863', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Crivelli', 'Michael', 'tmonnet@example.org');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 54, 'Femme',
        '+41 (0)75 024 90 63', 29, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (2, 'Finance') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (1, 'Developpement informatique') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (128, 2, 'Master');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (128, 1, 'Master');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (20.737829, -21.891949, 'rue de Julliard 76',
        'Duroux am Albis', '7389', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Marti', 'Pierre', 'robertelisa@example.com');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 20, 'Homme',
        '+41 (0)28 243 16 18', 40, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (1, 'Developpement informatique') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (5, 'Enseignement') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (129, 1, 'CFC');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (129, 5, 'Aucun');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (25.2507955, 0.681587, 'chemin de Wicht 7',
        'Francillon-des-Bois', '2029', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Chopard', 'Noah', 'elodie62@example.org');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 47, 'Homme',
        '+41 (0)69 987 79 72', 5, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (2, 'Finance') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (4, 'Santé') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (130, 2, 'Maturité Gymnasiale');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (130, 4, 'Bachelor');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (-89.264115, 16.416034, 'chemin de Musy 88',
        'Robert (GR)', '3607', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Balmat', 'Georges', 'loicjomini@example.net');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 25, 'Homme',
        '075 629 72 92', 38, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (2, 'Finance') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (3, 'Marketing') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (131, 2, 'Doctorat');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (131, 3, 'CFC');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (66.672241, -73.297531, 'chemin Cattin 56',
        'UnterJacot-Descombes', '9933', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Cornut', 'Florian', 'luciewicht@example.com');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 51, 'Autre',
        '095 213 23 33', 24, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (1, 'Developpement informatique') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (4, 'Santé') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (132, 1, 'Master');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (132, 4, 'Master');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (30.3701525, -62.047771, 'avenue de Bernasconi 40',
        'Balmat', '6250', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Menthonnex', 'Nolan', 'rene06@example.org');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 60, 'Homme',
        '0901 071 086', 24, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (3, 'Marketing') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (1, 'Developpement informatique') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (133, 3, 'Aucun');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (133, 1, 'Maturité Gymnasiale');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (67.850256, -172.961235, 'rue Crivelli 22',
        'Babey', '5221', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Cornut', 'Luca', 'brandtjose@example.net');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 50, 'Autre',
        '+41 88 498 73 24', 21, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (1, 'Developpement informatique') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (5, 'Enseignement') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (134, 1, 'Master');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (134, 5, 'Maturité Gymnasiale');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (-16.2065235, -71.384092, 'chemin Philippe Julliard',
        'Duroux', '1294', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Mayor', 'Elisa', 'zmartin@example.com');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 21, 'Femme',
        '045 975 80 27', 19, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (5, 'Enseignement') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (2, 'Finance') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (135, 5, 'Maturité Gymnasiale');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (135, 2, 'Doctorat');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (-77.9308905, -30.602882, 'boulevard Monnard 6',
        'Masseron', '3884', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Carraud', 'Germaine', 'julie23@example.net');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 59, 'Homme',
        '+41 68 526 77 71', 2, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (1, 'Developpement informatique') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (3, 'Marketing') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (136, 1, 'Doctorat');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (136, 3, 'Bachelor');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (-51.309411, -10.803453, 'avenue Droz 43',
        'Monney', '7613', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Menthonnex', 'Albert', 'fredericchopard@example.net');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 41, 'Femme',
        '0906 462 425', 26, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (4, 'Santé') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (3, 'Marketing') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (137, 4, 'Bachelor');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (137, 3, 'Maturité Gymnasiale');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (-25.735005, -46.138074, 'rue Cattin 50',
        'Rosselat (SO)', '5376', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Beuchat', 'Liliane', 'brandtalain@example.com');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 64, 'Femme',
        '038 413 69 85', 1, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (4, 'Santé') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (2, 'Finance') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (138, 4, 'Master');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (138, 2, 'Doctorat');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (87.5059205, 111.042027, 'chemin Eva Délèze 55',
        'Saudan-sur-Bahon', '4995', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Aeby', 'Roger', 'monique49@example.net');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 64, 'Femme',
        '0878 482 069', 23, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (4, 'Santé') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (3, 'Marketing') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (139, 4, 'Maturité Gymnasiale');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (139, 3, 'Maturité Gymnasiale');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (-11.7825245, 126.816732, 'rue de Paschoud 2',
        'Evéquoz-près-Nüsslin', '1206', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Bonvin', 'José', 'nathaliebonvini@example.net');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 33, 'Autre',
        '066 046 94 92', 5, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (5, 'Enseignement') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (2, 'Finance') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (140, 5, 'Master');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (140, 2, 'CFC');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (-35.630295, 137.146739, 'rue Frédéric Boechat 85',
        'Bourquin', '4862', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Romanens', 'Nathalie', 'pasquieralain@example.net');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 44, 'Homme',
        '+41 66 225 12 18', 5, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (1, 'Developpement informatique') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (2, 'Finance') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (141, 1, 'Bachelor');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (141, 2, 'Maturité Gymnasiale');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (-0.134253, 120.012622, 'chemin Rappaz 53',
        'Quartier-près-Beuret', '1132', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Beuchat', 'Sandrine', 'aurelie44@example.com');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 29, 'Femme',
        '0846 173 094', 31, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (1, 'Developpement informatique') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (5, 'Enseignement') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (142, 1, 'Master');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (142, 5, 'Maturité Gymnasiale');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (-60.608868, 25.475633, 'avenue Charlotte Marti 32',
        'Gillièron-près-Chapuis', '6477', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Nüsslin', 'Sylvie', 'daniellepachoud@example.net');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 18, 'Autre',
        '+41 90 472 13 34', 14, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (5, 'Enseignement') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (3, 'Marketing') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (143, 5, 'Doctorat');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (143, 3, 'Master');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (-74.895733, 22.313709, 'boulevard Laura Coigny 98',
        'Boillat', '9258', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Humbert', 'Arthur', 'sararapraz@example.org');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 21, 'Homme',
        '059 787 63 63', 18, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (1, 'Developpement informatique') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (4, 'Santé') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (144, 1, 'Doctorat');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (144, 4, 'Bachelor');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (-63.8506775, 23.361361, 'rue Raymond Babey 53',
        'Chopard-près-Polla', '5403', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Gilliéron', 'Gilbert', 'laurence55@example.net');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 38, 'Homme',
        '026 634 93 05', 24, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (1, 'Developpement informatique') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (3, 'Marketing') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (145, 1, 'Bachelor');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (145, 3, 'Aucun');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (-9.128025, -162.968651, 'chemin Elisa Boichat 6',
        'Treboux', '6312', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Chenaux', 'Chantal', 'julie31@example.com');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 34, 'Homme',
        '0900 065 974', 5, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (2, 'Finance') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (3, 'Marketing') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (146, 2, 'CFC');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (146, 3, 'Maturité Gymnasiale');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (-46.934491, 119.742513, 'rue de Béguelin',
        'Aeby', '2157', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Bujard', 'Léa', 'ucandaux@example.net');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 51, 'Homme',
        '+41 (0)45 613 98 84', 2, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (3, 'Marketing') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (5, 'Enseignement') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (147, 3, 'Master');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (147, 5, 'Doctorat');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (64.8940055, 15.234374, 'boulevard de Marti',
        'Barman', '4099', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Broquet', 'Théo', 'tcousin@example.com');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 52, 'Autre',
        '072 860 89 14', 14, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (2, 'Finance') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (1, 'Developpement informatique') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (148, 2, 'Master');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (148, 1, 'Doctorat');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (-2.4529705, 148.68522, 'rue Carron',
        'Saudan', '3944', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Menthonnex', 'Patricia', 'bcoigny@example.org');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 22, 'Autre',
        '+41 24 600 25 13', 21, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (1, 'Developpement informatique') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (3, 'Marketing') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (149, 1, 'Maturité Gymnasiale');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (149, 3, 'Doctorat');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (-52.5627675, 92.342207, 'chemin Laetitia Aebi 144',
        'Pellet', '1019', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Marti', 'Lara', 'manuelcousin@example.com');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 16, 'Homme',
        '+41 (0)47 155 32 49', 5, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (3, 'Marketing') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (4, 'Santé') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (150, 3, 'Master');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (150, 4, 'CFC');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (-51.4258735, -10.746094, 'rue Cosendey 58',
        'Robert (GL)', '9345', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Maire', 'Elodie', 'alicevonlanthen@example.net');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 34, 'Femme',
        '089 357 52 47', 4, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (4, 'Santé') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (5, 'Enseignement') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (151, 4, 'Bachelor');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (151, 5, 'Bachelor');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (-51.4545325, 90.240239, 'rue de Boillat 3',
        'Besançon am Rhein', '2040', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Bochud', 'Roland', 'sandracrivelli@example.com');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 55, 'Femme',
        '+41 97 615 76 50', 7, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (5, 'Enseignement') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (2, 'Finance') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (152, 5, 'Master');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (152, 2, 'Maturité Gymnasiale');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (50.77319, -112.25436, 'boulevard Deshusses 915',
        'Babey', '9542', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Humbert', 'Alicia', 'tde-dardel@example.org');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 42, 'Autre',
        '+41 (0)48 769 01 63', 6, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (5, 'Enseignement') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (2, 'Finance') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (153, 5, 'CFC');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (153, 2, 'Doctorat');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (-54.355858, 61.93254, 'rue Godet 12',
        'Mercier am Albis', '3849', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Niquille', 'Suzanne', 'chapuisrene@example.net');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 26, 'Autre',
        '+41 (0)42 332 24 69', 0, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (1, 'Developpement informatique') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (5, 'Enseignement') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (154, 1, 'Master');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (154, 5, 'Aucun');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (60.008134, 137.283388, 'rue de Beurret 81',
        'Rey', '3392', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Chaudet', 'Maurice', 'ochevalley@example.net');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 54, 'Autre',
        '+41 (0)41 448 17 08', 36, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (4, 'Santé') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (3, 'Marketing') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (155, 4, 'Aucun');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (155, 3, 'Bachelor');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (40.1145505, 178.135248, 'avenue Chevrolet 965',
        'Brahier', '9988', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Comte', 'Samuel', 'gabrielcornut@example.com');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 55, 'Femme',
        '034 161 83 80', 0, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (4, 'Santé') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (3, 'Marketing') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (156, 4, 'Aucun');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (156, 3, 'Doctorat');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (-73.5904965, -153.158988, 'boulevard Boillat 48',
        'Peitrequin am See', '4357', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Chatriant', 'Kevin', 'sandrinepasquier@example.com');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 37, 'Homme',
        '+41 48 371 07 53', 23, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (4, 'Santé') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (5, 'Enseignement') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (157, 4, 'Bachelor');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (157, 5, 'CFC');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (31.6351665, 25.72844, 'chemin Barillon 91',
        'Barillon', '7536', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Vuille', 'Nicole', 'jonathan98@example.com');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 43, 'Autre',
        '062 080 22 82', 10, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (2, 'Finance') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (5, 'Enseignement') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (158, 2, 'Aucun');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (158, 5, 'Aucun');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (55.1795585, 50.470711, 'rue de Bujard 1',
        'Vienne', '7253', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Droz', 'Manon', 'rossellatjessica@example.net');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 20, 'Femme',
        '+41 (0)72 471 28 44', 25, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (4, 'Santé') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (3, 'Marketing') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (159, 4, 'CFC');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (159, 3, 'Bachelor');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (-20.7978535, 95.428857, 'avenue Daniel Besançon 64',
        'Treboux-des-Bois', '8990', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Besançon', 'Jean', 'albert14@example.com');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 36, 'Autre',
        '072 399 31 25', 16, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (2, 'Finance') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (3, 'Marketing') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (160, 2, 'CFC');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (160, 3, 'Bachelor');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (16.0552335, -162.043875, 'chemin de Meyer 666',
        'Duroux', '1828', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Rossellat', 'Madeleine', 'christophenuesslin@example.org');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 37, 'Autre',
        '033 664 41 09', 3, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (4, 'Santé') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (3, 'Marketing') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (161, 4, 'Master');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (161, 3, 'Aucun');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (18.2604595, 32.578313, 'avenue Masseron',
        'Peitrequin', '9408', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Charpié', 'Denise', 'anamercier@example.net');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 45, 'Homme',
        '+41 79 235 07 85', 34, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (1, 'Developpement informatique') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (5, 'Enseignement') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (162, 1, 'Bachelor');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (162, 5, 'Maturité Gymnasiale');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (58.09255, -59.215051, 'rue Laura Nüsslin 8',
        'Humbert (LU)', '1506', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Saudan', 'Yvette', 'arthurduroux@example.com');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 53, 'Homme',
        '036 597 30 84', 14, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (3, 'Marketing') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (2, 'Finance') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (163, 3, 'CFC');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (163, 2, 'Aucun');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (80.8600625, 156.111878, 'chemin Vonlanthen 552',
        'Cosandey-sur-Vallélian', '1385', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Rey', 'Roland', 'davidberberat@example.com');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 39, 'Femme',
        '066 776 47 75', 27, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (5, 'Enseignement') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (1, 'Developpement informatique') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (164, 5, 'Bachelor');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (164, 1, 'Bachelor');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (-65.4469755, -1.491844, 'rue Thérèse Matile 56',
        'Cousin-sur-Bernasconi', '5545', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Masseron', 'Sara', 'rbujard@example.net');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 27, 'Autre',
        '+41 (0)90 449 26 07', 10, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (5, 'Enseignement') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (3, 'Marketing') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (165, 5, 'Aucun');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (165, 3, 'CFC');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (51.117747, 101.035574, 'chemin de Monnard 39',
        'Piccand-près-Barbey', '8928', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Broquet', 'Loïc', 'paccotsarah@example.com');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 35, 'Homme',
        '0878 895 594', 37, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (4, 'Santé') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (5, 'Enseignement') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (166, 4, 'Doctorat');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (166, 5, 'Master');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (-35.471782, 103.311574, 'rue de Sandoz 73',
        'San Meyer', '6758', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Nüsslin', 'Jean', 'louiscattin@example.com');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 28, 'Homme',
        '077 799 70 92', 24, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (4, 'Santé') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (2, 'Finance') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (167, 4, 'Master');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (167, 2, 'Maturité Gymnasiale');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (-80.9264515, 152.921261, 'chemin Julien Joly 14',
        'Polla', '7096', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Julliard', 'Aurélie', 'patriciathorens@example.org');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 61, 'Femme',
        '+41 (0)58 121 18 02', 8, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (5, 'Enseignement') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (3, 'Marketing') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (168, 5, 'Doctorat');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (168, 3, 'Bachelor');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (87.329833, 112.565393, 'avenue Valérie Berberat 15',
        'Babey', '7918', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Chatriant', 'Sophie', 'nuesslinhenri@example.net');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 30, 'Homme',
        '+41 21 947 49 20', 25, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (1, 'Developpement informatique') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (2, 'Finance') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (169, 1, 'Aucun');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (169, 2, 'Master');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (-89.458486, -9.214631, 'rue Grand 20',
        'Vuille', '5033', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Grand', 'Lucie', 'chapuisvalerie@example.net');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 52, 'Homme',
        '057 476 01 44', 24, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (4, 'Santé') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (1, 'Developpement informatique') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (170, 4, 'Maturité Gymnasiale');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (170, 1, 'Doctorat');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (52.02977, 14.529509, 'rue Paul Broquet 89',
        'Montandon (VS)', '2497', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Deladoëy', 'Zoé', 'stephanie95@example.org');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 31, 'Autre',
        '+41 (0)83 427 97 25', 32, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (3, 'Marketing') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (1, 'Developpement informatique') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (171, 3, 'Aucun');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (171, 1, 'CFC');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (-27.003557, 144.278871, 'rue de Cornuz 52',
        'Rapin am See', '5442', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Pachoud', 'Antonio', 'umueller@example.org');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 58, 'Femme',
        '035 432 68 94', 14, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (4, 'Santé') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (3, 'Marketing') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (172, 4, 'Master');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (172, 3, 'Bachelor');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (-65.1083465, 87.440745, 'boulevard Thorens',
        'Droz am Albis', '2520', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Badan', 'Pierre', 'samuelmorand@example.net');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 46, 'Homme',
        '+41 (0)81 354 52 57', 10, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (4, 'Santé') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (2, 'Finance') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (173, 4, 'Aucun');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (173, 2, 'Doctorat');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (-19.060529, 158.565255, 'boulevard Aurélie Musy 58',
        'Francillon-sur-Vuille', '7978', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Conrad', 'Mathieu', 'zgeorges@example.org');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 43, 'Homme',
        '0906 514 444', 39, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (5, 'Enseignement') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (1, 'Developpement informatique') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (174, 5, 'Doctorat');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (174, 1, 'CFC');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (-65.041073, -72.543903, 'rue Christian Francillon 4',
        'Bovet', '4408', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Bourquard', 'Jonathan', 'vonlanthenvalerie@example.org');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 38, 'Femme',
        '+41 26 588 58 40', 9, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (2, 'Finance') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (5, 'Enseignement') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (175, 2, 'Master');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (175, 5, 'Bachelor');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (-49.2957465, -105.275122, 'rue de Jomini 414',
        'Gilliéron', '7529', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Badel', 'Caroline', 'christophemontandon@example.com');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 56, 'Femme',
        '+41 25 099 52 88', 19, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (4, 'Santé') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (1, 'Developpement informatique') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (176, 4, 'Bachelor');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (176, 1, 'Bachelor');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (-78.6773745, 166.030556, 'avenue de Nüsslin 1',
        'Carraud', '1857', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Godet', 'Lara', 'thierry48@example.net');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 63, 'Femme',
        '093 928 37 82', 4, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (3, 'Marketing') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (4, 'Santé') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (177, 3, 'Maturité Gymnasiale');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (177, 4, 'CFC');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (-18.4223, -163.419359, 'rue Coigny 33',
        'Bujard am See', '8965', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Cosendey', 'Maxime', 'ubouvier@example.com');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 38, 'Autre',
        '0900 342 429', 6, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (5, 'Enseignement') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (1, 'Developpement informatique') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (178, 5, 'CFC');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (178, 1, 'Bachelor');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (63.852774, 40.37767, 'rue Isabelle Bonvini 572',
        'Chenaux-près-Deladoëy', '2052', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Mottet', 'Frédéric', 'qboechat@example.org');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 37, 'Autre',
        '+41 (0)53 675 81 25', 33, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (1, 'Developpement informatique') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (3, 'Marketing') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (179, 1, 'Maturité Gymnasiale');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (179, 3, 'CFC');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (-2.600175, -140.470173, 'avenue Nolan Robert 33',
        'UnterMasseron', '2187', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Barillon', 'Corinne', 'wichtlaetitia@example.com');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 23, 'Autre',
        '092 053 98 22', 10, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (3, 'Marketing') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (1, 'Developpement informatique') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (180, 3, 'Master');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (180, 1, 'CFC');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (72.42858, -76.234938, 'boulevard Olivier Tinguely 31',
        'Aeby', '2244', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Pellet', 'Jessica', 'sarasandoz@example.org');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 62, 'Homme',
        '039 738 77 37', 11, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (1, 'Developpement informatique') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (4, 'Santé') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (181, 1, 'CFC');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (181, 4, 'CFC');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (89.813005, 148.270542, 'boulevard Saudan 90',
        'Vuille-sur-Bahon', '2752', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Chapuis', 'Madeleine', 'carraudsamuel@example.org');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 21, 'Autre',
        '+41 92 248 33 02', 4, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (5, 'Enseignement') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (2, 'Finance') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (182, 5, 'Bachelor');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (182, 2, 'CFC');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (83.906899, -48.44895, 'rue Ana Bonvin 45',
        'Musy', '2852', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Berberat', 'Anna', 'lara94@example.net');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 34, 'Femme',
        '+41 (0)55 840 85 54', 4, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (3, 'Marketing') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (2, 'Finance') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (183, 3, 'Aucun');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (183, 2, 'Aucun');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (-47.071269, 137.049893, 'chemin Thorens 73',
        'San Cousin', '6281', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Uldry', 'Zoé', 'fredericevequoz@example.com');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 34, 'Homme',
        '0906 438 027', 29, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (5, 'Enseignement') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (3, 'Marketing') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (184, 5, 'Aucun');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (184, 3, 'Maturité Gymnasiale');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (-18.7082645, -172.519086, 'boulevard Cosendey 42',
        'OberChevalley', '6742', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Godet', 'Zoé', 'andremonney@example.net');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 46, 'Homme',
        '+41 69 719 81 33', 24, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (2, 'Finance') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (4, 'Santé') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (185, 2, 'Aucun');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (185, 4, 'CFC');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (-22.714283, 138.504118, 'avenue Pasquier 5',
        'Meyer-des-Bois', '7566', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Crivelli', 'Sandrine', 'georgettebeguin@example.org');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 52, 'Homme',
        '+41 53 083 42 19', 21, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (2, 'Finance') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (5, 'Enseignement') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (186, 2, 'Aucun');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (186, 5, 'Maturité Gymnasiale');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (29.800705, -159.628057, 'avenue Chapuis 16',
        'Beguin', '3569', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Mercier', 'Mélanie', 'bgrand@example.org');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 32, 'Femme',
        '0901 027 212', 29, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (1, 'Developpement informatique') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (4, 'Santé') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (187, 1, 'Bachelor');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (187, 4, 'Master');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (61.9953665, 107.85208, 'rue de Cornuz 348',
        'Droz', '5399', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Evéquoz', 'Charlotte', 'helene99@example.net');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 41, 'Femme',
        '092 930 46 97', 25, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (3, 'Marketing') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (2, 'Finance') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (188, 3, 'Doctorat');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (188, 2, 'Master');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (-36.092908, 120.690341, 'chemin Bavaud 526',
        'Matile am Albis', '6864', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Beguin', 'Madeleine', 'camilledeshusses@example.org');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 35, 'Autre',
        '+41 54 098 26 92', 22, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (1, 'Developpement informatique') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (2, 'Finance') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (189, 1, 'CFC');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (189, 2, 'Doctorat');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (23.9511385, 103.948848, 'rue de Matile 175',
        'Vuille-Dessous', '7130', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Crevoisier', 'Léo', 'patrick08@example.com');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 39, 'Autre',
        '+41 (0)69 502 74 92', 33, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (5, 'Enseignement') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (1, 'Developpement informatique') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (190, 5, 'Bachelor');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (190, 1, 'Maturité Gymnasiale');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (-89.362823, 17.338724, 'rue Corbat 470',
        'Rappaz (SH)', '1880', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Chevrolet', 'Caroline', 'bernardgillieron@example.org');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 29, 'Femme',
        '0840 903 842', 5, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (4, 'Santé') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (5, 'Enseignement') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (191, 4, 'Aucun');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (191, 5, 'Master');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (-46.012836, -128.977624, 'chemin Badel',
        'Bernasconi', '4274', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Chatriand', 'Michel', 'ybeurret@example.net');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 19, 'Autre',
        '0901 303 802', 9, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (2, 'Finance') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (5, 'Enseignement') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (192, 2, 'Bachelor');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (192, 5, 'CFC');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (69.2718325, 23.691827, 'rue de Conrad',
        'Galland-près-Bouvier', '2247', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Bugnon', 'Arthur', 'bchappuis@example.org');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 65, 'Homme',
        '0900 424 321', 21, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (3, 'Marketing') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (5, 'Enseignement') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (193, 3, 'Doctorat');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (193, 5, 'CFC');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (-13.540919, 176.123784, 'rue Mottet',
        'Diesbach-la-Ville', '1271', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Crevoisier', 'Philippe', 'jean-claudemasseron@example.com');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 41, 'Femme',
        '+41 64 675 02 17', 38, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (3, 'Marketing') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (2, 'Finance') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (194, 3, 'Maturité Gymnasiale');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (194, 2, 'Maturité Gymnasiale');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (-38.569359, 88.08344, 'rue de Babey 74',
        'Gillièron', '9744', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Matile', 'André', 'chantalbeguin@example.org');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 18, 'Autre',
        '0840 097 964', 27, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (1, 'Developpement informatique') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (3, 'Marketing') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (195, 1, 'CFC');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (195, 3, 'Master');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (-26.6058565, 140.668089, 'avenue de Bonvini 74',
        'Nüsslin-Dessus', '6865', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Müller', 'Théo', 'fcourvoisier@example.org');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 50, 'Homme',
        '+41 (0)58 067 36 58', 17, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (5, 'Enseignement') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (4, 'Santé') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (196, 5, 'CFC');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (196, 4, 'Aucun');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (-25.1093675, -124.149394, 'boulevard Bugnon 416',
        'Paschoud', '8114', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Cornuz', 'Paul', 'jonathanevequoz@example.net');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 38, 'Homme',
        '+41 (0)33 963 48 62', 29, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (1, 'Developpement informatique') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (4, 'Santé') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (197, 1, 'Master');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (197, 4, 'CFC');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (53.293989, -64.476239, 'chemin de Joly 78',
        'Jomini-sur-Martin', '6845', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Gillièron', 'François', 'kaeby@example.net');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 18, 'Homme',
        '+41 (0)38 180 75 51', 36, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (2, 'Finance') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (5, 'Enseignement') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (198, 2, 'Master');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (198, 5, 'Doctorat');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (62.8238595, -69.732283, 'avenue Thorens 3',
        'Sansonnens-près-Cousin', '8888', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Paschoud', 'Alexandre', 'andrefrancillon@example.org');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 26, 'Femme',
        '+41 89 110 06 67', 4, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (2, 'Finance') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (1, 'Developpement informatique') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (199, 2, 'Aucun');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (199, 1, 'Bachelor');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (21.573735, 117.729565, 'rue de Nusslé 7',
        'Humbert-sur-Cretton', '6322', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Muriset', 'Bernard', 'humbertlucie@example.org');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 31, 'Autre',
        '0878 315 228', 6, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (1, 'Developpement informatique') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (4, 'Santé') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (200, 1, 'Bachelor');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (200, 4, 'Master');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (-45.95478, 23.124574, 'boulevard Thierry Bourquard 20',
        'Peitrequin', '3597', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Piccand', 'Anna', 'christianpachoud@example.org');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 62, 'Autre',
        '058 696 98 87', 9, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (1, 'Developpement informatique') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (3, 'Marketing') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (201, 1, 'Master');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (201, 3, 'CFC');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (-73.6289775, 50.575888, 'boulevard de Jomini 32',
        'Mercier-la-Ville', '5993', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Cretton', 'Gérard', 'jose11@example.net');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 33, 'Homme',
        '0878 410 399', 13, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (2, 'Finance') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (4, 'Santé') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (202, 2, 'Master');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (202, 4, 'Aucun');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (-45.9955595, -22.52295, 'rue Stéphane Martin 85',
        'Muriset', '4679', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Bochud', 'Corinne', 'theo22@example.com');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 51, 'Homme',
        '+41 (0)96 137 33 29', 18, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (1, 'Developpement informatique') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (4, 'Santé') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (203, 1, 'CFC');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (203, 4, 'Bachelor');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (31.3277435, 7.204051, 'rue Besse 70',
        'Rapin-Dessous', '7691', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Treboux', 'Véronique', 'gcorpataux@example.com');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 43, 'Homme',
        '099 356 33 72', 15, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (2, 'Finance') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (4, 'Santé') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (204, 2, 'Master');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (204, 4, 'Doctorat');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (74.8082215, 16.97203, 'boulevard Crevoisier 67',
        'Berberat-les-Bains', '2428', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Polla', 'Lara', 'zoeromanens@example.org');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 16, 'Autre',
        '+41 (0)90 354 13 97', 34, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (1, 'Developpement informatique') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (4, 'Santé') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (205, 1, 'Master');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (205, 4, 'Aucun');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (24.676317, -53.042742, 'rue Christian Menthonnex',
        'Muriset (ZH)', '2404', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Beguin', 'Robert', 'rolandgillieron@example.com');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 59, 'Autre',
        '+41 (0)95 553 52 38', 10, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (3, 'Marketing') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (2, 'Finance') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (206, 3, 'Doctorat');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (206, 2, 'Master');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (-58.561172, -3.157578, 'chemin Müller 392',
        'Badel-près-Broquet', '6690', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Dubey', 'Nelly', 'matilecharlotte@example.org');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 26, 'Femme',
        '+41 38 796 50 76', 27, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (3, 'Marketing') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (2, 'Finance') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (207, 3, 'Doctorat');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (207, 2, 'Maturité Gymnasiale');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (-14.41608, 130.283653, 'rue Treboux',
        'Bonvini', '2985', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Bouvier', 'Fabienne', 'ddiesbach@example.com');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 54, 'Femme',
        '+41 (0)80 071 31 45', 25, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (2, 'Finance') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (3, 'Marketing') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (208, 2, 'Aucun');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (208, 3, 'Master');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (-86.849281, -57.832827, 'rue de Galland 427',
        'Duvanel am Albis', '5681', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Besançon', 'Sara', 'anna48@example.org');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 21, 'Homme',
        '+41 25 051 97 97', 6, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (4, 'Santé') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (5, 'Enseignement') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (209, 4, 'CFC');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (209, 5, 'Doctorat');
COMMIT;

-- candidat
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (-18.068404, 69.639899, 'rue de Comte 56',
        'Pellet', '2121', 'Suisse');
INSERT INTO Personne (nom, prenom, email)
VALUES ('Cosandey', 'Ethan', 'jmercier@example.com');
INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
VALUES ((SELECT MAX(id) FROM Personne), 26, 'Femme',
        '027 388 83 53', 23, (SELECT MAX(id) FROM Adresse));
INSERT INTO Domaine (id, nom) VALUES (1, 'Developpement informatique') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Domaine (id, nom) VALUES (2, 'Finance') ON CONFLICT (nom) DO NOTHING;
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (210, 1, 'CFC');
INSERT INTO Candidat_Domaine (idCandidat, idDomaine, diplomePossede) VALUES (210, 2, 'Bachelor');
COMMIT;

-- offre
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (30.8373255, -175.225872, 'boulevard Duroux 594',
        'Beuret', '7854', 'Suisse');
INSERT INTO Offre (idAdresse, descriptionOffre, nomPoste, anneesExpRequises, datePublication, dateCloture)
VALUES ((SELECT MAX(id) FROM Adresse), 'La liberté de louer autrement', 'Technicien-dentiste CFC',
        3, '2024-01-10', NULL);
COMMIT;

-- offre
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (-21.649392, 55.102024, 'rue Jacqueline Cattin 48',
        'Rosselet', '1841', 'Suisse');
INSERT INTO Offre (idAdresse, descriptionOffre, nomPoste, anneesExpRequises, datePublication, dateCloture)
VALUES ((SELECT MAX(id) FROM Adresse), 'L''avantage d''atteindre vos buts plus rapidement', 'Contremaître vitrier avec brevet fédéral',
        1, '2024-03-11', NULL);
COMMIT;

-- offre
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (-34.6870115, 140.73315, 'boulevard Liliane Duroux 89',
        'Pasquier', '3007', 'Suisse');
INSERT INTO Offre (idAdresse, descriptionOffre, nomPoste, anneesExpRequises, datePublication, dateCloture)
VALUES ((SELECT MAX(id) FROM Adresse), 'L''assurance d''évoluer de manière efficace', 'Maréchal-forgeron, maître',
        2, '2024-05-13', NULL);
COMMIT;

-- offre
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (-5.172715, 174.831185, 'boulevard Odette Cornuz',
        'OberBesançon', '6006', 'Suisse');
INSERT INTO Offre (idAdresse, descriptionOffre, nomPoste, anneesExpRequises, datePublication, dateCloture)
VALUES ((SELECT MAX(id) FROM Adresse), 'Le plaisir d''avancer de manière efficace', 'Informaticien CFC',
        9, '2024-02-29', '2024-12-24');
COMMIT;

-- offre
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (-77.2562635, 5.805836, 'rue de Bovet 79',
        'Pachoud (AG)', '3651', 'Suisse');
INSERT INTO Offre (idAdresse, descriptionOffre, nomPoste, anneesExpRequises, datePublication, dateCloture)
VALUES ((SELECT MAX(id) FROM Adresse), 'Le confort d''innover de manière sûre', 'Conseiller en énergie et en efficacité énergétique avec diplôme fédéral',
        9, '2024-02-21', NULL);
COMMIT;

-- offre
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (-2.0427525, 92.460165, 'avenue Barman 165',
        'Chenaux', '2075', 'Suisse');
INSERT INTO Offre (idAdresse, descriptionOffre, nomPoste, anneesExpRequises, datePublication, dateCloture)
VALUES ((SELECT MAX(id) FROM Adresse), 'La possibilité de louer de manière efficace', 'Agent technico-commercial avec brevet fédéral',
        3, '2024-03-02', NULL);
COMMIT;

-- offre
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (87.6140015, 152.503633, 'rue Droz 399',
        'Piccand-près-Boechat', '4952', 'Suisse');
INSERT INTO Offre (idAdresse, descriptionOffre, nomPoste, anneesExpRequises, datePublication, dateCloture)
VALUES ((SELECT MAX(id) FROM Adresse), 'La possibilité de concrétiser vos projets autrement', 'dipl. Geschäftsführer NDS HF',
        2, '2024-01-15', '2024-09-02');
COMMIT;

-- offre
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (-40.1775525, -22.515345, 'chemin Chantal Bouvier 46',
        'Crevoisier', '6823', 'Suisse');
INSERT INTO Offre (idAdresse, descriptionOffre, nomPoste, anneesExpRequises, datePublication, dateCloture)
VALUES ((SELECT MAX(id) FROM Adresse), 'L''avantage de concrétiser vos projets naturellement', 'Maître jardinier',
        2, '2024-05-29', '2024-12-29');
COMMIT;

-- offre
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (66.9656325, 97.076174, 'chemin Mercier 81',
        'Badel-près-Joye', '5459', 'Suisse');
INSERT INTO Offre (idAdresse, descriptionOffre, nomPoste, anneesExpRequises, datePublication, dateCloture)
VALUES ((SELECT MAX(id) FROM Adresse), 'L''assurance de louer avant-tout', 'Maître tableaux électriques et automation',
        6, '2024-03-12', '2024-12-13');
COMMIT;

-- offre
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (-61.854618, 147.363076, 'rue Aeby 853',
        'Isella (AG)', '5908', 'Suisse');
INSERT INTO Offre (idAdresse, descriptionOffre, nomPoste, anneesExpRequises, datePublication, dateCloture)
VALUES ((SELECT MAX(id) FROM Adresse), 'Le pouvoir de concrétiser vos projets plus rapidement', 'Spécialiste en vernissage industriel avec brevet fédéral',
        2, '2024-03-15', '2024-06-10');
COMMIT;

-- offre
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (-11.616302, 139.211851, 'rue Peitrequin 2',
        'Sainte Bouvier', '3016', 'Suisse');
INSERT INTO Offre (idAdresse, descriptionOffre, nomPoste, anneesExpRequises, datePublication, dateCloture)
VALUES ((SELECT MAX(id) FROM Adresse), 'L''avantage d''évoluer naturellement', 'Opérateur en horlogerie AFP',
        8, '2024-06-18', '2024-08-27');
COMMIT;

-- offre
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (-4.7574705, -105.115025, 'chemin Bovet',
        'Monney am See', '4032', 'Suisse');
INSERT INTO Offre (idAdresse, descriptionOffre, nomPoste, anneesExpRequises, datePublication, dateCloture)
VALUES ((SELECT MAX(id) FROM Adresse), 'Le confort de rouler à sa source', 'Peintre en bâtiments',
        2, '2024-03-24', NULL);
COMMIT;

-- offre
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (-24.333675, -7.873355, 'boulevard Véronique Musy 6',
        'Grosjean-près-Mottet', '1339', 'Suisse');
INSERT INTO Offre (idAdresse, descriptionOffre, nomPoste, anneesExpRequises, datePublication, dateCloture)
VALUES ((SELECT MAX(id) FROM Adresse), 'Le pouvoir d''avancer de manière efficace', 'Contremaître forestier avec brevet fédéral',
        1, '2024-01-19', NULL);
COMMIT;

-- offre
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (62.262931, 170.880878, 'rue Monique Vienne 4',
        'Beurret', '2485', 'Suisse');
INSERT INTO Offre (idAdresse, descriptionOffre, nomPoste, anneesExpRequises, datePublication, dateCloture)
VALUES ((SELECT MAX(id) FROM Adresse), 'L''avantage de rouler autrement', 'Vannier créateur CFC',
        6, '2024-06-22', NULL);
COMMIT;

-- offre
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (-75.790818, -144.078406, 'avenue de Brahier',
        'Chappuis (BS)', '6621', 'Suisse');
INSERT INTO Offre (idAdresse, descriptionOffre, nomPoste, anneesExpRequises, datePublication, dateCloture)
VALUES ((SELECT MAX(id) FROM Adresse), 'L''avantage de concrétiser vos projets de manière sûre', 'Conseiller en environnement avec brevet federal',
        0, '2024-01-19', '2024-06-05');
COMMIT;

-- offre
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (6.299594, 81.038032, 'chemin Kevin Comment',
        'Robert-des-Bois', '9937', 'Suisse');
INSERT INTO Offre (idAdresse, descriptionOffre, nomPoste, anneesExpRequises, datePublication, dateCloture)
VALUES ((SELECT MAX(id) FROM Adresse), 'La possibilité de rouler autrement', 'Maître poseur de revêtements de sols',
        5, '2024-03-17', '2025-03-06');
COMMIT;

-- offre
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (13.348673, 12.833578, 'chemin Bourquard 374',
        'Bourquard', '7503', 'Suisse');
INSERT INTO Offre (idAdresse, descriptionOffre, nomPoste, anneesExpRequises, datePublication, dateCloture)
VALUES ((SELECT MAX(id) FROM Adresse), 'Le plaisir d''évoluer en toute tranquilité', 'Contremaître charpentier avec brevet fédéral',
        9, '2024-04-10', '2024-08-13');
COMMIT;

-- offre
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (48.499204, -85.349508, 'avenue de Monnet 66',
        'Crivelli (JU)', '7589', 'Suisse');
INSERT INTO Offre (idAdresse, descriptionOffre, nomPoste, anneesExpRequises, datePublication, dateCloture)
VALUES ((SELECT MAX(id) FROM Adresse), 'Le plaisir de concrétiser vos projets à la pointe', 'Electronicien en multimédia',
        1, '2024-03-04', '2024-07-13');
COMMIT;

-- offre
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (18.746121, -40.530796, 'boulevard Privet',
        'Vuille', '8300', 'Suisse');
INSERT INTO Offre (idAdresse, descriptionOffre, nomPoste, anneesExpRequises, datePublication, dateCloture)
VALUES ((SELECT MAX(id) FROM Adresse), 'Le plaisir de changer plus rapidement', 'Chef de cuisine avec diplôme fédéral',
        5, '2024-02-06', NULL);
COMMIT;

-- offre
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (6.525981, -28.44549, 'boulevard Fonjallaz 18',
        'Comment-sur-Balmat', '4147', 'Suisse');
INSERT INTO Offre (idAdresse, descriptionOffre, nomPoste, anneesExpRequises, datePublication, dateCloture)
VALUES ((SELECT MAX(id) FROM Adresse), 'Le confort de changer autrement', 'Spécialiste en assurance-maladie avec brevet fédéral',
        9, '2024-06-27', NULL);
COMMIT;

-- offre
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (19.2945, -30.978559, 'avenue Beurret 7',
        'Bovet (AG)', '6381', 'Suisse');
INSERT INTO Offre (idAdresse, descriptionOffre, nomPoste, anneesExpRequises, datePublication, dateCloture)
VALUES ((SELECT MAX(id) FROM Adresse), 'Le plaisir d''innover à la pointe', 'Monteur frigoriste CFC',
        1, '2024-06-14', '2024-10-17');
COMMIT;

-- offre
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (87.6069595, -165.761854, 'rue Michael Thorens 429',
        'UnterChapuis', '8246', 'Suisse');
INSERT INTO Offre (idAdresse, descriptionOffre, nomPoste, anneesExpRequises, datePublication, dateCloture)
VALUES ((SELECT MAX(id) FROM Adresse), 'Le plaisir d''innover en toute tranquilité', 'Agent professionnel de protection de personnes et de biens avec brevet fédéral',
        4, '2024-05-10', '2024-06-16');
COMMIT;

-- offre
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (-63.0598855, -139.788689, 'chemin Elodie Brahier 9',
        'Godet-près-Mercier', '9566', 'Suisse');
INSERT INTO Offre (idAdresse, descriptionOffre, nomPoste, anneesExpRequises, datePublication, dateCloture)
VALUES ((SELECT MAX(id) FROM Adresse), 'Le confort d''avancer en toute tranquilité', 'Enquêteur de douane avec diplôme fédéral',
        8, '2024-01-31', '2024-07-27');
COMMIT;

-- offre
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (-36.116505, 120.516996, 'boulevard Odette Musy',
        'Vuille-près-Monney', '7400', 'Suisse');
INSERT INTO Offre (idAdresse, descriptionOffre, nomPoste, anneesExpRequises, datePublication, dateCloture)
VALUES ((SELECT MAX(id) FROM Adresse), 'L''assurance d''évoluer de manière efficace', 'Sommelier avec brevet fédéral',
        2, '2024-03-20', '2024-12-21');
COMMIT;

-- offre
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (61.015577, -16.434091, 'rue Robert 71',
        'Meyer-sur-Gilliéron', '2512', 'Suisse');
INSERT INTO Offre (idAdresse, descriptionOffre, nomPoste, anneesExpRequises, datePublication, dateCloture)
VALUES ((SELECT MAX(id) FROM Adresse), 'Le plaisir de rouler naturellement', 'Spécialiste en hôtellerie CFC',
        6, '2024-04-21', '2025-04-03');
COMMIT;

-- offre
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (-38.4584925, -12.852584, 'rue de Babey 304',
        'Brandt-près-Pasquier', '4178', 'Suisse');
INSERT INTO Offre (idAdresse, descriptionOffre, nomPoste, anneesExpRequises, datePublication, dateCloture)
VALUES ((SELECT MAX(id) FROM Adresse), 'La possibilité de concrétiser vos projets en toute tranquilité', 'Garnisseur de meubles industriels, maître',
        9, '2024-05-17', NULL);
COMMIT;

-- offre
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (-80.646652, 147.04015, 'boulevard de de Dardel 22',
        'Saint Jacot-Descombes', '3583', 'Suisse');
INSERT INTO Offre (idAdresse, descriptionOffre, nomPoste, anneesExpRequises, datePublication, dateCloture)
VALUES ((SELECT MAX(id) FROM Adresse), 'Le confort d''innover de manière efficace', 'Contact Center Supervisor avec brevet fédéral',
        1, '2024-06-10', '2025-01-01');
COMMIT;

-- offre
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (-40.5026815, 6.984, 'boulevard de Cornut 57',
        'Menthonnex-sur-Cosendey', '1006', 'Suisse');
INSERT INTO Offre (idAdresse, descriptionOffre, nomPoste, anneesExpRequises, datePublication, dateCloture)
VALUES ((SELECT MAX(id) FROM Adresse), 'L''assurance d''atteindre vos buts autrement', 'Aviculteur CFC (Champ professionnel de l''agriculture)',
        6, '2024-06-19', '2025-02-13');
COMMIT;

-- offre
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (-67.725594, -115.659253, 'rue Rapraz',
        'Morand-sur-Rossellat', '5368', 'Suisse');
INSERT INTO Offre (idAdresse, descriptionOffre, nomPoste, anneesExpRequises, datePublication, dateCloture)
VALUES ((SELECT MAX(id) FROM Adresse), 'L''avantage de changer à sa source', 'Conducteur de véhicules légers AFP',
        7, '2024-03-23', NULL);
COMMIT;

-- offre
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (-19.440347, 35.778327, 'rue de Cattin 126',
        'Isella', '3927', 'Suisse');
INSERT INTO Offre (idAdresse, descriptionOffre, nomPoste, anneesExpRequises, datePublication, dateCloture)
VALUES ((SELECT MAX(id) FROM Adresse), 'Le plaisir de louer naturellement', 'Graveur CFC',
        3, '2024-04-09', '2024-07-19');
COMMIT;

-- offre
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (43.892137, 150.416741, 'boulevard Raymond Dubey',
        'OberSaudan', '8238', 'Suisse');
INSERT INTO Offre (idAdresse, descriptionOffre, nomPoste, anneesExpRequises, datePublication, dateCloture)
VALUES ((SELECT MAX(id) FROM Adresse), 'L''avantage d''atteindre vos buts de manière efficace', 'Maître textile avec diplôme fédéral',
        9, '2024-01-16', NULL);
COMMIT;

-- offre
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (-21.763839, -139.883821, 'boulevard de Crivelli',
        'Comment am See', '3017', 'Suisse');
INSERT INTO Offre (idAdresse, descriptionOffre, nomPoste, anneesExpRequises, datePublication, dateCloture)
VALUES ((SELECT MAX(id) FROM Adresse), 'Le confort de changer naturellement', 'Agent de propreté CFC',
        9, '2024-05-29', NULL);
COMMIT;

-- offre
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (30.59022, 111.334572, 'avenue David Romanens 7',
        'Paschoud', '6872', 'Suisse');
INSERT INTO Offre (idAdresse, descriptionOffre, nomPoste, anneesExpRequises, datePublication, dateCloture)
VALUES ((SELECT MAX(id) FROM Adresse), 'Le plaisir de changer avant-tout', 'Cadre diplomé des organisations de secours',
        0, '2024-01-25', NULL);
COMMIT;

-- offre
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (48.4149715, 96.070728, 'avenue de Privet 22',
        'Jacot-Descombes', '7897', 'Suisse');
INSERT INTO Offre (idAdresse, descriptionOffre, nomPoste, anneesExpRequises, datePublication, dateCloture)
VALUES ((SELECT MAX(id) FROM Adresse), 'Le pouvoir de louer plus rapidement', 'Réalisateur publicitaire CFC',
        8, '2024-01-09', '2024-07-07');
COMMIT;

-- offre
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (2.8850485, -138.258197, 'rue de Bugnon 679',
        'Chatriand', '1336', 'Suisse');
INSERT INTO Offre (idAdresse, descriptionOffre, nomPoste, anneesExpRequises, datePublication, dateCloture)
VALUES ((SELECT MAX(id) FROM Adresse), 'Le pouvoir de changer en toute tranquilité', 'Assistant en podologie CFC',
        5, '2024-02-22', '2024-06-14');
COMMIT;

-- offre
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (-83.520282, 161.610657, 'rue Christine Bourquard',
        'Mercier am Albis', '7380', 'Suisse');
INSERT INTO Offre (idAdresse, descriptionOffre, nomPoste, anneesExpRequises, datePublication, dateCloture)
VALUES ((SELECT MAX(id) FROM Adresse), 'Le confort d''atteindre vos buts à la pointe', 'Nettoyeur chimique diplômé',
        1, '2024-03-04', NULL);
COMMIT;

-- offre
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (60.3327675, -153.694029, 'avenue Georges Rappaz',
        'Berberat', '5527', 'Suisse');
INSERT INTO Offre (idAdresse, descriptionOffre, nomPoste, anneesExpRequises, datePublication, dateCloture)
VALUES ((SELECT MAX(id) FROM Adresse), 'Le plaisir d''avancer à l''état pur', 'dipl. Kommunikationstrainer NDS HF',
        10, '2024-01-29', NULL);
COMMIT;

-- offre
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (-6.973978, 83.167164, 'boulevard Polla 4',
        'Peitrequin-les-Bains', '2574', 'Suisse');
INSERT INTO Offre (idAdresse, descriptionOffre, nomPoste, anneesExpRequises, datePublication, dateCloture)
VALUES ((SELECT MAX(id) FROM Adresse), 'Le droit d''avancer à la pointe', 'agrocommerçant diplômé ES',
        8, '2024-04-29', NULL);
COMMIT;

-- offre
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (-59.1041555, 158.908334, 'avenue de Gillièron',
        'Wicht', '2251', 'Suisse');
INSERT INTO Offre (idAdresse, descriptionOffre, nomPoste, anneesExpRequises, datePublication, dateCloture)
VALUES ((SELECT MAX(id) FROM Adresse), 'L''avantage d''innover à l''état pur', 'Sculpteur sur pierre CFC (Champ professionnel travail de la pierre)',
        1, '2024-01-04', '2024-02-03');
COMMIT;

-- offre
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (-20.78762, -160.211872, 'chemin Chappuis 6',
        'Evéquoz-sur-Corboz', '1383', 'Suisse');
INSERT INTO Offre (idAdresse, descriptionOffre, nomPoste, anneesExpRequises, datePublication, dateCloture)
VALUES ((SELECT MAX(id) FROM Adresse), 'L''art d''évoluer naturellement', 'Peintre en décors de théâtre',
        2, '2024-05-05', '2025-02-06');
COMMIT;

-- offre
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (88.2772595, 156.624719, 'boulevard Monney 896',
        'Comte', '9077', 'Suisse');
INSERT INTO Offre (idAdresse, descriptionOffre, nomPoste, anneesExpRequises, datePublication, dateCloture)
VALUES ((SELECT MAX(id) FROM Adresse), 'L''art d''atteindre vos buts naturellement', 'dipl. in Unternehmens- und Mitarbeiterführung NDS HF',
        4, '2024-04-20', '2024-10-28');
COMMIT;

-- offre
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (-51.2654185, -46.249558, 'avenue Roger Boillat 9',
        'Bugnon', '9829', 'Suisse');
INSERT INTO Offre (idAdresse, descriptionOffre, nomPoste, anneesExpRequises, datePublication, dateCloture)
VALUES ((SELECT MAX(id) FROM Adresse), 'L''assurance d''atteindre vos buts de manière efficace', 'Agent de transport et logistique avec brevet fédéral',
        10, '2024-01-16', '2024-08-05');
COMMIT;

-- offre
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (-38.042875, -21.713918, 'avenue Julie Carron 3',
        'Beuret', '7048', 'Suisse');
INSERT INTO Offre (idAdresse, descriptionOffre, nomPoste, anneesExpRequises, datePublication, dateCloture)
VALUES ((SELECT MAX(id) FROM Adresse), 'Le pouvoir de concrétiser vos projets avant-tout', 'Peintre en automobiles avec brevet fédéral',
        7, '2024-05-08', NULL);
COMMIT;

-- offre
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (30.2466805, -1.897808, 'rue Noah Dubey',
        'Aebi', '8051', 'Suisse');
INSERT INTO Offre (idAdresse, descriptionOffre, nomPoste, anneesExpRequises, datePublication, dateCloture)
VALUES ((SELECT MAX(id) FROM Adresse), 'Le pouvoir d''innover avant-tout', 'Expert en estimations immobilières avec brevet fédéral',
        5, '2024-05-14', NULL);
COMMIT;

-- offre
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (69.0459105, 68.347662, 'avenue Chappuis 34',
        'Boichat', '6867', 'Suisse');
INSERT INTO Offre (idAdresse, descriptionOffre, nomPoste, anneesExpRequises, datePublication, dateCloture)
VALUES ((SELECT MAX(id) FROM Adresse), 'Le pouvoir d''évoluer à sa source', 'Boulanger-pâtissier-confiseur AFP',
        1, '2024-05-19', '2024-12-30');
COMMIT;

-- offre
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (-74.1112165, 153.759487, 'chemin de Uldry',
        'Cosandey', '2128', 'Suisse');
INSERT INTO Offre (idAdresse, descriptionOffre, nomPoste, anneesExpRequises, datePublication, dateCloture)
VALUES ((SELECT MAX(id) FROM Adresse), 'La liberté d''atteindre vos buts sans soucis', 'Aide-polybâtisseur AFP',
        7, '2024-04-26', '2025-01-26');
COMMIT;

-- offre
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (30.5103505, 70.839354, 'rue de Mercier 996',
        'Bourquin', '7034', 'Suisse');
INSERT INTO Offre (idAdresse, descriptionOffre, nomPoste, anneesExpRequises, datePublication, dateCloture)
VALUES ((SELECT MAX(id) FROM Adresse), 'Le plaisir de louer plus rapidement', 'Spécialiste des branches de la boulangerie-pâtisserie-confiserie avec brevet fédéral',
        9, '2024-06-26', '2024-08-12');
COMMIT;

-- offre
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (-69.563559, -36.147502, 'avenue Alber',
        'Aeby-sur-Grojean', '9644', 'Suisse');
INSERT INTO Offre (idAdresse, descriptionOffre, nomPoste, anneesExpRequises, datePublication, dateCloture)
VALUES ((SELECT MAX(id) FROM Adresse), 'Le plaisir d''innover à l''état pur', 'Fashion spécialiste avec brevet fédéral',
        1, '2024-04-08', NULL);
COMMIT;

-- offre
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (-38.6832055, 162.406401, 'avenue de Nusslé 37',
        'Niquille-sur-Jacot-Guillarmod', '2522', 'Suisse');
INSERT INTO Offre (idAdresse, descriptionOffre, nomPoste, anneesExpRequises, datePublication, dateCloture)
VALUES ((SELECT MAX(id) FROM Adresse), 'Le confort de concrétiser vos projets autrement', 'Chef de production technique des matières synthétiques diplômé',
        5, '2024-04-02', '2024-08-10');
COMMIT;

-- offre
BEGIN;
INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
VALUES (-63.0077555, -21.260304, 'rue de Sansonnens 56',
        'Mercier', '8152', 'Suisse');
INSERT INTO Offre (idAdresse, descriptionOffre, nomPoste, anneesExpRequises, datePublication, dateCloture)
VALUES ((SELECT MAX(id) FROM Adresse), 'L''assurance de changer de manière efficace', 'Constructeur d’appareils industriels CFC',
        1, '2024-02-08', '2024-12-06');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (11, 32,
        '2024-07-16', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (11, 36,
        '2024-04-02', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (11, 39,
        '2024-01-28', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (11, 46,
        '2024-08-12', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (11, 45,
        '2024-08-24', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (12, 22,
        '2024-06-08', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (12, 35,
        '2024-03-05', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (12, 42,
        '2024-04-30', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (12, 26,
        '2024-07-12', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (12, 11,
        '2024-08-11', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (13, 1,
        '2024-03-04', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (13, 11,
        '2024-07-22', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (13, 14,
        '2024-08-02', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (13, 31,
        '2024-01-20', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (13, 4,
        '2024-12-22', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (14, 19,
        '2024-02-28', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (14, 40,
        '2024-07-01', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (14, 6,
        '2024-03-26', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (14, 8,
        '2024-08-15', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (14, 9,
        '2024-07-09', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (15, 1,
        '2024-03-09', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (15, 35,
        '2024-03-30', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (15, 15,
        '2024-05-06', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (15, 7,
        '2024-01-25', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (15, 30,
        '2024-06-15', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (16, 14,
        '2024-08-10', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (16, 8,
        '2024-11-01', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (16, 39,
        '2024-01-30', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (16, 20,
        '2024-07-16', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (16, 17,
        '2024-07-11', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (17, 24,
        '2024-11-23', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (17, 41,
        '2024-08-18', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (17, 42,
        '2024-01-22', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (17, 39,
        '2024-01-17', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (17, 26,
        '2024-06-14', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (18, 17,
        '2024-06-26', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (18, 8,
        '2024-07-13', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (18, 34,
        '2024-04-09', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (18, 44,
        '2024-05-25', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (18, 3,
        '2024-06-07', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (19, 12,
        '2024-04-05', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (19, 2,
        '2024-05-03', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (19, 49,
        '2024-07-21', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (19, 6,
        '2024-03-24', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (19, 7,
        '2024-03-08', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (20, 25,
        '2024-10-25', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (20, 23,
        '2024-02-09', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (20, 36,
        '2024-03-19', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (20, 16,
        '2024-05-25', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (20, 43,
        '2024-05-13', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (21, 22,
        '2024-05-27', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (21, 29,
        '2024-04-19', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (21, 8,
        '2024-12-14', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (21, 50,
        '2024-11-19', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (21, 17,
        '2024-06-12', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (22, 1,
        '2024-02-15', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (22, 27,
        '2024-06-11', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (22, 29,
        '2024-04-25', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (22, 25,
        '2024-12-21', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (22, 4,
        '2024-08-24', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (23, 8,
        '2024-12-07', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (23, 3,
        '2024-06-26', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (23, 36,
        '2024-05-01', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (23, 41,
        '2024-05-20', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (23, 2,
        '2024-03-12', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (24, 31,
        '2024-02-01', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (24, 13,
        '2024-03-06', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (24, 3,
        '2024-05-17', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (24, 49,
        '2024-06-08', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (24, 42,
        '2024-05-08', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (25, 28,
        '2024-09-21', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (25, 5,
        '2024-04-12', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (25, 45,
        '2024-09-04', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (25, 23,
        '2024-05-01', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (25, 7,
        '2024-05-31', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (26, 7,
        '2024-06-11', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (26, 45,
        '2024-11-12', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (26, 33,
        '2024-01-26', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (26, 24,
        '2024-11-26', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (26, 46,
        '2025-01-01', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (27, 34,
        '2024-06-08', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (27, 30,
        '2024-05-05', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (27, 33,
        '2024-02-18', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (27, 18,
        '2024-04-30', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (27, 47,
        '2024-08-05', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (28, 10,
        '2024-04-07', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (28, 24,
        '2024-04-03', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (28, 21,
        '2024-07-26', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (28, 32,
        '2024-07-19', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (28, 1,
        '2024-02-03', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (29, 21,
        '2024-08-20', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (29, 11,
        '2024-08-23', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (29, 31,
        '2024-02-12', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (29, 14,
        '2024-07-29', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (29, 45,
        '2024-12-21', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (30, 30,
        '2024-05-14', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (30, 31,
        '2024-02-01', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (30, 38,
        '2024-05-16', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (30, 22,
        '2024-06-08', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (30, 44,
        '2024-07-10', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (31, 5,
        '2024-03-10', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (31, 29,
        '2024-05-04', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (31, 17,
        '2024-05-16', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (31, 30,
        '2024-05-21', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (31, 23,
        '2024-02-28', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (32, 47,
        '2024-07-27', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (32, 23,
        '2024-02-04', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (32, 10,
        '2024-03-27', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (32, 19,
        '2024-03-31', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (32, 18,
        '2024-07-03', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (33, 38,
        '2024-04-30', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (33, 1,
        '2024-02-07', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (33, 48,
        '2024-06-01', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (33, 41,
        '2024-10-25', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (33, 3,
        '2024-05-25', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (34, 17,
        '2024-04-11', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (34, 8,
        '2024-10-30', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (34, 25,
        '2024-08-27', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (34, 49,
        '2024-05-04', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (34, 1,
        '2024-03-07', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (35, 46,
        '2024-06-11', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (35, 27,
        '2024-08-18', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (35, 36,
        '2024-03-15', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (35, 34,
        '2024-03-03', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (35, 3,
        '2024-07-10', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (36, 41,
        '2024-09-21', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (36, 23,
        '2024-03-03', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (36, 43,
        '2024-05-23', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (36, 17,
        '2024-05-22', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (36, 11,
        '2024-08-26', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (37, 20,
        '2024-08-12', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (37, 25,
        '2024-12-17', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (37, 12,
        '2024-04-13', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (37, 23,
        '2024-03-04', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (37, 50,
        '2024-11-12', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (38, 12,
        '2024-05-16', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (38, 28,
        '2024-10-16', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (38, 14,
        '2024-07-22', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (38, 7,
        '2024-03-31', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (38, 3,
        '2024-05-27', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (39, 9,
        '2024-04-15', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (39, 38,
        '2024-06-01', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (39, 11,
        '2024-08-19', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (39, 10,
        '2024-05-10', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (39, 7,
        '2024-03-12', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (40, 19,
        '2024-02-26', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (40, 50,
        '2024-11-18', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (40, 13,
        '2024-01-21', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (40, 34,
        '2024-02-18', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (40, 22,
        '2024-06-12', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (41, 22,
        '2024-06-04', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (41, 49,
        '2024-08-06', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (41, 47,
        '2024-08-05', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (41, 48,
        '2024-05-24', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (41, 18,
        '2024-06-06', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (42, 13,
        '2024-02-10', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (42, 32,
        '2024-06-04', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (42, 5,
        '2024-03-17', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (42, 7,
        '2024-04-21', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (42, 9,
        '2024-11-19', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (43, 30,
        '2024-07-18', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (43, 3,
        '2024-05-19', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (43, 2,
        '2024-04-17', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (43, 12,
        '2024-05-19', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (43, 23,
        '2024-05-11', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (44, 2,
        '2024-04-06', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (44, 6,
        '2024-04-17', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (44, 26,
        '2024-05-23', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (44, 21,
        '2024-09-01', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (44, 39,
        '2024-01-29', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (45, 4,
        '2024-05-11', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (45, 22,
        '2024-06-04', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (45, 41,
        '2024-06-06', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (45, 37,
        '2024-02-10', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (45, 24,
        '2024-04-07', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (46, 38,
        '2024-05-25', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (46, 30,
        '2024-04-26', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (46, 45,
        '2024-11-07', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (46, 12,
        '2024-04-07', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (46, 36,
        '2024-04-08', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (47, 35,
        '2024-03-22', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (47, 29,
        '2024-04-25', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (47, 34,
        '2024-04-07', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (47, 24,
        '2024-08-17', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (47, 21,
        '2024-06-24', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (48, 32,
        '2024-07-19', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (48, 47,
        '2024-07-12', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (48, 7,
        '2024-06-28', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (48, 20,
        '2024-06-28', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (48, 27,
        '2024-07-20', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (49, 6,
        '2024-03-05', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (49, 22,
        '2024-06-01', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (49, 3,
        '2024-07-01', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (49, 24,
        '2024-08-23', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (49, 37,
        '2024-02-06', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (50, 46,
        '2024-08-18', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (50, 28,
        '2024-10-03', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (50, 14,
        '2024-08-05', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (50, 21,
        '2024-08-17', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (50, 36,
        '2024-04-10', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (51, 10,
        '2024-05-28', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (51, 21,
        '2024-06-19', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (51, 19,
        '2024-03-06', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (51, 14,
        '2024-08-13', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (51, 44,
        '2024-05-29', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (52, 32,
        '2024-07-27', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (52, 13,
        '2024-02-28', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (52, 39,
        '2024-01-30', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (52, 10,
        '2024-04-25', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (52, 4,
        '2024-11-15', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (53, 12,
        '2024-04-04', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (53, 20,
        '2024-07-13', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (53, 23,
        '2024-07-21', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (53, 48,
        '2024-05-03', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (53, 32,
        '2024-06-14', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (54, 38,
        '2024-06-18', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (54, 17,
        '2024-05-06', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (54, 31,
        '2024-03-05', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (54, 41,
        '2024-06-14', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (54, 7,
        '2024-08-16', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (55, 9,
        '2024-03-27', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (55, 42,
        '2024-06-13', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (55, 48,
        '2024-06-06', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (55, 5,
        '2024-02-22', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (55, 43,
        '2024-06-24', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (56, 20,
        '2024-07-08', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (56, 2,
        '2024-03-26', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (56, 8,
        '2024-07-21', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (56, 15,
        '2024-05-07', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (56, 32,
        '2024-06-08', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (57, 24,
        '2024-09-09', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (57, 7,
        '2024-04-28', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (57, 40,
        '2024-12-19', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (57, 45,
        '2024-08-02', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (57, 35,
        '2024-02-23', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (58, 33,
        '2024-02-08', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (58, 38,
        '2024-06-03', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (58, 28,
        '2024-11-16', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (58, 43,
        '2024-06-01', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (58, 29,
        '2024-03-30', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (59, 47,
        '2024-07-05', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (59, 12,
        '2024-04-20', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (59, 36,
        '2024-03-12', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (59, 35,
        '2024-04-25', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (59, 43,
        '2024-07-02', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (60, 37,
        '2024-02-04', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (60, 16,
        '2025-01-05', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (60, 35,
        '2024-06-06', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (60, 12,
        '2024-05-17', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (60, 7,
        '2024-06-07', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (61, 36,
        '2024-04-01', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (61, 1,
        '2024-02-20', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (61, 6,
        '2024-03-27', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (61, 48,
        '2024-05-01', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (61, 19,
        '2024-03-30', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (62, 1,
        '2024-01-14', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (62, 50,
        '2024-06-28', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (62, 15,
        '2024-03-21', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (62, 41,
        '2024-07-19', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (62, 32,
        '2024-06-25', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (63, 43,
        '2024-06-19', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (63, 1,
        '2024-02-20', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (63, 47,
        '2024-07-27', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (63, 17,
        '2024-07-23', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (63, 33,
        '2024-01-27', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (64, 6,
        '2024-04-26', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (64, 42,
        '2024-04-21', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (64, 47,
        '2024-07-09', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (64, 9,
        '2024-06-30', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (64, 26,
        '2024-06-17', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (65, 19,
        '2024-03-11', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (65, 8,
        '2024-10-28', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (65, 38,
        '2024-05-30', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (65, 20,
        '2024-07-29', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (65, 45,
        '2024-08-10', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (66, 8,
        '2024-06-05', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (66, 36,
        '2024-04-09', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (66, 6,
        '2024-04-09', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (66, 12,
        '2024-05-10', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (66, 48,
        '2024-05-14', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (67, 10,
        '2024-03-23', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (67, 40,
        '2024-10-18', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (67, 49,
        '2024-04-19', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (67, 20,
        '2024-07-11', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (67, 30,
        '2024-07-02', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (68, 46,
        '2024-09-30', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (68, 5,
        '2024-03-10', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (68, 31,
        '2024-03-03', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (68, 45,
        '2024-07-25', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (68, 7,
        '2024-05-16', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (69, 7,
        '2024-03-19', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (69, 12,
        '2024-05-13', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (69, 36,
        '2024-04-18', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (69, 6,
        '2024-04-25', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (69, 45,
        '2024-06-22', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (70, 18,
        '2024-04-24', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (70, 24,
        '2024-12-08', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (70, 39,
        '2024-01-26', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (70, 30,
        '2024-05-29', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (70, 34,
        '2024-03-06', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (71, 1,
        '2024-01-28', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (71, 45,
        '2024-08-03', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (71, 24,
        '2024-07-18', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (71, 31,
        '2024-02-25', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (71, 40,
        '2024-06-17', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (72, 46,
        '2024-04-29', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (72, 42,
        '2024-05-01', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (72, 1,
        '2024-02-15', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (72, 24,
        '2024-10-20', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (72, 44,
        '2024-07-07', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (73, 24,
        '2024-03-23', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (73, 39,
        '2024-01-23', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (73, 35,
        '2024-05-01', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (73, 13,
        '2024-01-27', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (73, 15,
        '2024-02-01', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (74, 22,
        '2024-05-13', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (74, 4,
        '2024-10-03', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (74, 13,
        '2024-02-05', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (74, 18,
        '2024-06-25', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (74, 21,
        '2024-09-02', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (75, 40,
        '2024-11-03', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (75, 47,
        '2024-07-15', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (75, 15,
        '2024-05-02', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (75, 7,
        '2024-07-09', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (75, 19,
        '2024-03-22', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (76, 10,
        '2024-03-18', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (76, 25,
        '2024-10-27', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (76, 7,
        '2024-07-23', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (76, 24,
        '2024-12-02', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (76, 42,
        '2024-07-16', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (77, 34,
        '2024-01-26', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (77, 6,
        '2024-03-23', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (77, 37,
        '2024-03-02', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (77, 36,
        '2024-04-17', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (77, 12,
        '2024-04-07', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (78, 38,
        '2024-05-16', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (78, 43,
        '2024-05-28', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (78, 32,
        '2024-06-24', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (78, 24,
        '2024-05-10', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (78, 11,
        '2024-07-06', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (79, 15,
        '2024-05-20', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (79, 34,
        '2024-06-09', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (79, 39,
        '2024-01-10', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (79, 40,
        '2024-05-27', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (79, 36,
        '2024-03-07', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (80, 15,
        '2024-03-05', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (80, 19,
        '2024-02-19', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (80, 40,
        '2024-12-22', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (80, 27,
        '2024-12-05', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (80, 45,
        '2024-07-30', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (81, 24,
        '2024-12-01', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (81, 3,
        '2024-06-09', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (81, 6,
        '2024-03-24', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (81, 29,
        '2024-05-04', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (81, 9,
        '2024-11-25', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (82, 26,
        '2024-05-21', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (82, 29,
        '2024-04-26', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (82, 49,
        '2024-05-13', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (82, 8,
        '2024-11-06', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (82, 50,
        '2024-09-18', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (83, 13,
        '2024-03-13', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (83, 37,
        '2024-03-17', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (83, 38,
        '2024-05-17', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (83, 2,
        '2024-04-23', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (83, 33,
        '2024-03-08', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (84, 12,
        '2024-05-15', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (84, 10,
        '2024-04-11', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (84, 2,
        '2024-04-08', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (84, 19,
        '2024-02-29', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (84, 11,
        '2024-08-12', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (85, 30,
        '2024-04-22', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (85, 36,
        '2024-04-27', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (85, 27,
        '2024-07-24', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (85, 15,
        '2024-02-22', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (85, 45,
        '2024-08-26', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (86, 37,
        '2024-02-09', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (86, 29,
        '2024-04-14', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (86, 23,
        '2024-02-22', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (86, 47,
        '2024-08-11', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (86, 33,
        '2024-03-12', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (87, 13,
        '2024-02-15', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (87, 25,
        '2025-03-08', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (87, 14,
        '2024-08-09', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (87, 6,
        '2024-04-25', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (87, 4,
        '2024-04-26', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (88, 14,
        '2024-07-07', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (88, 28,
        '2024-07-23', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (88, 11,
        '2024-06-28', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (88, 47,
        '2024-06-27', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (88, 19,
        '2024-02-22', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (89, 9,
        '2024-06-07', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (89, 21,
        '2024-07-11', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (89, 16,
        '2024-10-15', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (89, 43,
        '2024-06-13', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (89, 19,
        '2024-04-05', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (90, 11,
        '2024-06-18', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (90, 47,
        '2024-07-02', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (90, 43,
        '2024-06-29', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (90, 44,
        '2024-05-29', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (90, 28,
        '2024-10-16', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (91, 24,
        '2024-05-31', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (91, 1,
        '2024-03-08', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (91, 38,
        '2024-06-14', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (91, 23,
        '2024-05-21', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (91, 26,
        '2024-06-10', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (92, 24,
        '2024-12-04', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (92, 31,
        '2024-01-20', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (92, 27,
        '2024-11-30', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (92, 12,
        '2024-04-30', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (92, 7,
        '2024-02-09', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (93, 22,
        '2024-05-18', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (93, 14,
        '2024-07-05', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (93, 38,
        '2024-05-16', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (93, 46,
        '2024-06-30', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (93, 29,
        '2024-04-21', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (94, 17,
        '2024-05-31', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (94, 23,
        '2024-07-01', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (94, 44,
        '2024-06-20', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (94, 8,
        '2024-11-29', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (94, 47,
        '2024-07-25', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (95, 49,
        '2024-05-27', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (95, 45,
        '2024-05-23', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (95, 42,
        '2024-06-21', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (95, 32,
        '2024-07-15', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (95, 3,
        '2024-07-04', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (96, 40,
        '2024-10-26', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (96, 25,
        '2024-08-12', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (96, 24,
        '2024-08-07', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (96, 22,
        '2024-06-02', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (96, 43,
        '2024-07-02', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (97, 1,
        '2024-01-27', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (97, 13,
        '2024-02-16', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (97, 37,
        '2024-03-02', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (97, 28,
        '2024-12-26', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (97, 22,
        '2024-06-06', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (98, 23,
        '2024-06-12', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (98, 24,
        '2024-08-09', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (98, 37,
        '2024-02-11', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (98, 18,
        '2024-07-02', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (98, 49,
        '2024-07-18', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (99, 15,
        '2024-04-01', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (99, 34,
        '2024-02-09', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (99, 22,
        '2024-05-10', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (99, 46,
        '2024-07-21', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (99, 44,
        '2024-06-30', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (100, 27,
        '2024-08-12', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (100, 6,
        '2024-03-13', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (100, 26,
        '2024-05-26', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (100, 1,
        '2024-02-01', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (100, 36,
        '2024-04-29', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (101, 17,
        '2024-06-12', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (101, 3,
        '2024-06-28', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (101, 10,
        '2024-05-31', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (101, 42,
        '2024-02-21', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (101, 34,
        '2024-06-02', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (102, 28,
        '2024-06-23', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (102, 42,
        '2024-06-12', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (102, 22,
        '2024-05-25', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (102, 23,
        '2024-03-23', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (102, 12,
        '2024-03-25', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (103, 4,
        '2024-05-17', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (103, 37,
        '2024-03-22', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (103, 32,
        '2024-06-20', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (103, 43,
        '2024-06-28', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (103, 12,
        '2024-04-16', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (104, 18,
        '2024-03-07', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (104, 37,
        '2024-03-12', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (104, 20,
        '2024-08-12', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (104, 35,
        '2024-05-18', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (104, 40,
        '2024-12-03', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (105, 50,
        '2024-09-21', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (105, 8,
        '2024-09-12', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (105, 20,
        '2024-07-27', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (105, 44,
        '2024-06-06', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (105, 33,
        '2024-03-22', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (106, 44,
        '2024-07-11', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (106, 26,
        '2024-06-01', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (106, 50,
        '2024-04-18', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (106, 46,
        '2024-06-30', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (106, 8,
        '2024-06-06', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (107, 47,
        '2024-08-05', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (107, 27,
        '2024-08-11', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (107, 4,
        '2024-10-24', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (107, 28,
        '2025-02-02', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (107, 44,
        '2024-06-23', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (108, 4,
        '2024-04-24', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (108, 50,
        '2024-02-16', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (108, 29,
        '2024-04-29', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (108, 32,
        '2024-07-19', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (108, 24,
        '2024-11-16', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (109, 30,
        '2024-07-17', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (109, 23,
        '2024-07-24', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (109, 31,
        '2024-02-13', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (109, 46,
        '2024-10-07', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (109, 14,
        '2024-07-25', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (110, 18,
        '2024-04-22', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (110, 49,
        '2024-04-20', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (110, 20,
        '2024-07-18', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (110, 34,
        '2024-03-18', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (110, 27,
        '2024-06-21', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (111, 44,
        '2024-05-24', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (111, 26,
        '2024-05-31', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (111, 21,
        '2024-09-25', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (111, 8,
        '2024-08-23', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (111, 7,
        '2024-08-16', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (112, 36,
        '2024-04-10', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (112, 41,
        '2024-08-30', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (112, 5,
        '2024-02-28', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (112, 30,
        '2024-07-02', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (112, 3,
        '2024-05-30', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (113, 6,
        '2024-04-09', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (113, 5,
        '2024-03-01', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (113, 11,
        '2024-08-09', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (113, 7,
        '2024-02-14', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (113, 44,
        '2024-06-26', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (114, 48,
        '2024-05-06', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (114, 8,
        '2024-09-19', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (114, 17,
        '2024-06-30', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (114, 39,
        '2024-01-08', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (114, 22,
        '2024-05-11', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (115, 3,
        '2024-07-08', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (115, 48,
        '2024-06-02', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (115, 40,
        '2024-10-12', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (115, 5,
        '2024-04-16', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (115, 35,
        '2024-03-14', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (116, 49,
        '2024-04-18', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (116, 41,
        '2024-08-13', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (116, 22,
        '2024-05-13', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (116, 12,
        '2024-05-14', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (116, 8,
        '2024-10-12', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (117, 36,
        '2024-03-12', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (117, 2,
        '2024-04-19', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (117, 33,
        '2024-03-02', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (117, 30,
        '2024-06-19', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (117, 10,
        '2024-03-31', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (118, 40,
        '2024-08-07', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (118, 21,
        '2024-08-20', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (118, 16,
        '2024-12-16', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (118, 23,
        '2024-07-09', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (118, 43,
        '2024-06-05', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (119, 22,
        '2024-05-18', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (119, 36,
        '2024-04-14', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (119, 15,
        '2024-04-16', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (119, 18,
        '2024-05-10', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (119, 38,
        '2024-05-03', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (120, 36,
        '2024-03-22', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (120, 15,
        '2024-05-13', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (120, 7,
        '2024-01-16', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (120, 29,
        '2024-04-05', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (120, 5,
        '2024-03-13', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (121, 23,
        '2024-07-07', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (121, 37,
        '2024-02-23', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (121, 8,
        '2024-08-03', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (121, 17,
        '2024-06-16', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (121, 33,
        '2024-03-22', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (122, 46,
        '2024-12-24', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (122, 41,
        '2024-06-30', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (122, 43,
        '2024-06-22', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (122, 13,
        '2024-02-04', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (122, 34,
        '2024-07-05', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (123, 5,
        '2024-03-15', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (123, 33,
        '2024-01-27', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (123, 14,
        '2024-07-22', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (123, 24,
        '2024-05-19', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (123, 9,
        '2024-06-28', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (124, 28,
        '2024-12-09', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (124, 9,
        '2024-05-02', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (124, 27,
        '2024-12-06', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (124, 31,
        '2024-02-01', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (124, 15,
        '2024-05-22', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (125, 5,
        '2024-03-17', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (125, 23,
        '2024-03-28', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (125, 19,
        '2024-03-31', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (125, 41,
        '2024-05-21', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (125, 45,
        '2024-08-15', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (126, 6,
        '2024-04-13', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (126, 44,
        '2024-06-30', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (126, 9,
        '2024-08-16', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (126, 24,
        '2024-11-10', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (126, 34,
        '2024-06-13', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (127, 19,
        '2024-02-07', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (127, 49,
        '2024-08-04', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (127, 31,
        '2024-02-24', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (127, 41,
        '2024-05-16', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (127, 33,
        '2024-02-08', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (128, 10,
        '2024-05-27', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (128, 1,
        '2024-03-03', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (128, 24,
        '2024-11-01', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (128, 41,
        '2024-05-27', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (128, 34,
        '2024-07-03', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (129, 45,
        '2024-08-09', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (129, 46,
        '2024-04-28', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (129, 28,
        '2024-08-20', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (129, 3,
        '2024-07-08', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (129, 31,
        '2024-02-05', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (130, 19,
        '2024-03-02', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (130, 22,
        '2024-06-13', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (130, 32,
        '2024-06-04', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (130, 25,
        '2025-01-04', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (130, 29,
        '2024-05-15', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (131, 35,
        '2024-05-15', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (131, 1,
        '2024-02-26', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (131, 15,
        '2024-05-28', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (131, 19,
        '2024-02-18', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (131, 38,
        '2024-06-28', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (132, 7,
        '2024-06-14', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (132, 39,
        '2024-01-24', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (132, 8,
        '2024-08-11', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (132, 41,
        '2024-10-26', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (132, 2,
        '2024-04-03', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (133, 26,
        '2024-07-04', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (133, 19,
        '2024-02-25', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (133, 29,
        '2024-04-21', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (133, 24,
        '2024-08-07', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (133, 20,
        '2024-08-08', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (134, 7,
        '2024-08-13', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (134, 48,
        '2024-05-04', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (134, 12,
        '2024-05-23', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (134, 8,
        '2024-06-27', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (134, 33,
        '2024-02-13', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (135, 14,
        '2024-07-06', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (135, 27,
        '2024-08-06', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (135, 12,
        '2024-04-15', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (135, 37,
        '2024-02-12', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (135, 2,
        '2024-04-25', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (136, 9,
        '2024-08-11', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (136, 34,
        '2024-07-04', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (136, 42,
        '2024-02-15', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (136, 44,
        '2024-06-20', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (136, 28,
        '2024-11-10', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (137, 28,
        '2024-07-01', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (137, 4,
        '2024-07-13', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (137, 18,
        '2024-05-30', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (137, 49,
        '2024-07-03', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (137, 17,
        '2024-07-24', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (138, 30,
        '2024-06-12', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (138, 14,
        '2024-06-28', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (138, 20,
        '2024-07-03', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (138, 5,
        '2024-03-03', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (138, 1,
        '2024-02-07', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (139, 49,
        '2024-07-05', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (139, 15,
        '2024-03-24', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (139, 35,
        '2024-05-23', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (139, 11,
        '2024-08-05', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (139, 7,
        '2024-09-01', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (140, 15,
        '2024-05-12', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (140, 13,
        '2024-02-26', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (140, 41,
        '2024-06-26', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (140, 14,
        '2024-08-15', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (140, 3,
        '2024-07-05', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (141, 37,
        '2024-03-03', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (141, 26,
        '2024-05-20', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (141, 24,
        '2024-08-30', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (141, 13,
        '2024-03-17', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (141, 18,
        '2024-03-31', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (142, 40,
        '2024-12-25', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (142, 39,
        '2024-01-21', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (142, 34,
        '2024-04-29', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (142, 23,
        '2024-07-06', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (142, 30,
        '2024-05-15', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (143, 42,
        '2024-07-05', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (143, 8,
        '2024-11-18', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (143, 4,
        '2024-06-16', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (143, 29,
        '2024-03-27', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (143, 47,
        '2024-07-01', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (144, 47,
        '2024-07-08', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (144, 23,
        '2024-05-29', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (144, 13,
        '2024-02-09', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (144, 39,
        '2024-01-19', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (144, 5,
        '2024-04-18', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (145, 19,
        '2024-03-18', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (145, 17,
        '2024-07-08', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (145, 9,
        '2024-07-21', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (145, 34,
        '2024-01-10', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (145, 32,
        '2024-06-24', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (146, 9,
        '2024-03-12', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (146, 13,
        '2024-02-20', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (146, 12,
        '2024-03-30', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (146, 16,
        '2024-11-05', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (146, 10,
        '2024-04-04', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (147, 27,
        '2024-09-08', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (147, 28,
        '2024-12-17', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (147, 19,
        '2024-02-24', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (147, 47,
        '2024-07-31', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (147, 33,
        '2024-03-21', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (148, 5,
        '2024-02-24', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (148, 25,
        '2024-09-04', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (148, 8,
        '2024-06-20', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (148, 14,
        '2024-07-14', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (148, 11,
        '2024-07-29', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (149, 20,
        '2024-06-30', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (149, 14,
        '2024-07-14', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (149, 47,
        '2024-07-28', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (149, 16,
        '2024-09-13', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (149, 39,
        '2024-01-25', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (150, 15,
        '2024-04-14', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (150, 48,
        '2024-05-29', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (150, 23,
        '2024-06-03', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (150, 17,
        '2024-07-06', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (150, 10,
        '2024-05-02', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (151, 17,
        '2024-05-10', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (151, 13,
        '2024-03-03', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (151, 11,
        '2024-08-20', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (151, 5,
        '2024-03-26', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (151, 36,
        '2024-04-21', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (152, 24,
        '2024-07-28', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (152, 4,
        '2024-10-22', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (152, 27,
        '2024-08-22', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (152, 31,
        '2024-01-31', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (152, 32,
        '2024-06-19', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (153, 50,
        '2024-08-31', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (153, 23,
        '2024-05-01', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (153, 27,
        '2024-07-25', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (153, 2,
        '2024-04-26', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (153, 49,
        '2024-07-10', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (154, 37,
        '2024-03-05', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (154, 45,
        '2024-12-10', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (154, 26,
        '2024-06-07', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (154, 43,
        '2024-05-11', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (154, 15,
        '2024-01-23', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (155, 29,
        '2024-04-13', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (155, 22,
        '2024-05-28', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (155, 10,
        '2024-03-21', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (155, 39,
        '2024-02-01', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (155, 20,
        '2024-08-03', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (156, 50,
        '2024-07-29', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (156, 2,
        '2024-04-19', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (156, 40,
        '2024-10-14', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (156, 18,
        '2024-05-27', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (156, 11,
        '2024-08-21', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (157, 37,
        '2024-02-06', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (157, 40,
        '2024-10-02', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (157, 12,
        '2024-03-28', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (157, 29,
        '2024-04-13', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (157, 2,
        '2024-04-23', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (158, 13,
        '2024-02-08', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (158, 39,
        '2024-01-28', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (158, 27,
        '2024-11-07', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (158, 31,
        '2024-01-31', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (158, 26,
        '2024-07-11', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (159, 4,
        '2024-07-26', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (159, 14,
        '2024-07-23', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (159, 28,
        '2025-01-09', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (159, 34,
        '2024-05-28', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (159, 35,
        '2024-04-15', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (160, 39,
        '2024-01-29', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (160, 2,
        '2024-04-30', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (160, 29,
        '2024-05-06', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (160, 16,
        '2024-10-31', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (160, 34,
        '2024-03-14', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (161, 24,
        '2024-12-06', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (161, 7,
        '2024-01-24', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (161, 37,
        '2024-02-10', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (161, 50,
        '2024-07-30', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (161, 2,
        '2024-05-08', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (162, 45,
        '2024-07-08', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (162, 9,
        '2024-10-23', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (162, 40,
        '2024-05-14', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (162, 26,
        '2024-06-11', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (162, 16,
        '2024-11-27', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (163, 14,
        '2024-07-01', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (163, 27,
        '2024-08-25', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (163, 26,
        '2024-06-06', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (163, 42,
        '2024-05-05', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (163, 1,
        '2024-01-12', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (164, 34,
        '2024-02-23', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (164, 20,
        '2024-07-24', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (164, 44,
        '2024-07-08', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (164, 32,
        '2024-06-28', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (164, 30,
        '2024-06-01', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (165, 27,
        '2024-10-05', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (165, 9,
        '2024-07-03', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (165, 49,
        '2024-06-10', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (165, 12,
        '2024-05-20', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (165, 5,
        '2024-03-20', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (166, 17,
        '2024-06-16', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (166, 39,
        '2024-01-10', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (166, 31,
        '2024-01-30', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (166, 36,
        '2024-03-29', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (166, 10,
        '2024-04-03', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (167, 3,
        '2024-06-16', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (167, 12,
        '2024-04-23', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (167, 16,
        '2025-01-24', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (167, 27,
        '2024-07-09', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (167, 1,
        '2024-01-24', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (168, 10,
        '2024-05-07', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (168, 26,
        '2024-07-16', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (168, 35,
        '2024-03-07', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (168, 9,
        '2024-06-02', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (168, 16,
        '2025-02-02', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (169, 5,
        '2024-04-05', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (169, 50,
        '2024-02-14', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (169, 47,
        '2024-07-22', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (169, 46,
        '2024-10-19', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (169, 24,
        '2024-03-27', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (170, 49,
        '2024-06-02', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (170, 31,
        '2024-02-04', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (170, 18,
        '2024-04-28', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (170, 47,
        '2024-08-07', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (170, 37,
        '2024-02-02', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (171, 22,
        '2024-05-23', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (171, 13,
        '2024-02-18', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (171, 50,
        '2024-07-20', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (171, 11,
        '2024-07-29', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (171, 12,
        '2024-05-16', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (172, 19,
        '2024-03-11', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (172, 13,
        '2024-02-17', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (172, 30,
        '2024-04-19', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (172, 14,
        '2024-08-06', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (172, 49,
        '2024-05-28', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (173, 1,
        '2024-02-11', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (173, 33,
        '2024-02-24', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (173, 3,
        '2024-06-05', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (173, 36,
        '2024-03-07', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (173, 43,
        '2024-05-12', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (174, 45,
        '2024-08-19', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (174, 44,
        '2024-07-13', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (174, 43,
        '2024-05-12', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (174, 48,
        '2024-04-09', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (174, 39,
        '2024-01-24', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (175, 17,
        '2024-05-26', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (175, 49,
        '2024-06-06', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (175, 29,
        '2024-05-21', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (175, 14,
        '2024-06-23', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (175, 35,
        '2024-06-10', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (176, 37,
        '2024-03-18', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (176, 46,
        '2024-07-04', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (176, 22,
        '2024-05-15', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (176, 50,
        '2024-10-25', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (176, 29,
        '2024-05-19', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (177, 47,
        '2024-07-17', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (177, 25,
        '2024-08-21', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (177, 26,
        '2024-06-01', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (177, 48,
        '2024-04-24', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (177, 27,
        '2024-08-15', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (178, 14,
        '2024-07-19', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (178, 33,
        '2024-03-17', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (178, 8,
        '2024-11-19', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (178, 48,
        '2024-05-25', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (178, 35,
        '2024-05-14', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (179, 20,
        '2024-08-18', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (179, 9,
        '2024-06-12', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (179, 37,
        '2024-02-02', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (179, 26,
        '2024-07-09', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (179, 43,
        '2024-07-01', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (180, 21,
        '2024-08-20', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (180, 40,
        '2024-10-12', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (180, 19,
        '2024-04-02', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (180, 45,
        '2024-09-17', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (180, 12,
        '2024-04-05', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (181, 8,
        '2024-06-24', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (181, 6,
        '2024-04-19', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (181, 34,
        '2024-05-14', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (181, 25,
        '2024-10-12', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (181, 48,
        '2024-04-22', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (182, 17,
        '2024-04-19', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (182, 26,
        '2024-05-22', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (182, 31,
        '2024-03-05', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (182, 32,
        '2024-07-11', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (182, 39,
        '2024-01-20', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (183, 1,
        '2024-02-16', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (183, 4,
        '2024-05-25', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (183, 5,
        '2024-03-24', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (183, 7,
        '2024-07-29', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (183, 13,
        '2024-03-08', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (184, 39,
        '2024-01-14', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (184, 1,
        '2024-01-14', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (184, 20,
        '2024-06-28', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (184, 48,
        '2024-05-29', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (184, 29,
        '2024-05-11', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (185, 24,
        '2024-05-22', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (185, 42,
        '2024-02-19', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (185, 46,
        '2024-09-24', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (185, 8,
        '2024-10-04', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (185, 11,
        '2024-08-14', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (186, 36,
        '2024-04-18', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (186, 38,
        '2024-05-06', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (186, 20,
        '2024-08-16', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (186, 17,
        '2024-07-21', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (186, 22,
        '2024-05-28', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (187, 28,
        '2024-07-01', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (187, 30,
        '2024-05-23', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (187, 50,
        '2024-05-11', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (187, 5,
        '2024-03-03', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (187, 3,
        '2024-05-22', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (188, 12,
        '2024-04-29', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (188, 37,
        '2024-02-02', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (188, 38,
        '2024-06-06', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (188, 23,
        '2024-02-25', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (188, 14,
        '2024-07-20', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (189, 17,
        '2024-06-10', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (189, 46,
        '2024-11-23', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (189, 6,
        '2024-04-11', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (189, 47,
        '2024-07-26', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (189, 11,
        '2024-07-05', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (190, 38,
        '2024-05-04', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (190, 28,
        '2024-07-30', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (190, 25,
        '2024-12-13', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (190, 1,
        '2024-01-20', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (190, 43,
        '2024-06-27', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (191, 18,
        '2024-03-29', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (191, 44,
        '2024-06-20', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (191, 9,
        '2024-05-11', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (191, 19,
        '2024-02-08', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (191, 2,
        '2024-05-10', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (192, 30,
        '2024-06-22', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (192, 45,
        '2024-06-08', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (192, 19,
        '2024-03-04', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (192, 5,
        '2024-03-09', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (192, 44,
        '2024-06-01', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (193, 20,
        '2024-06-28', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (193, 4,
        '2024-06-02', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (193, 27,
        '2024-11-27', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (193, 45,
        '2024-09-11', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (193, 22,
        '2024-05-21', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (194, 30,
        '2024-05-04', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (194, 46,
        '2024-05-18', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (194, 39,
        '2024-01-14', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (194, 26,
        '2024-05-20', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (194, 17,
        '2024-07-13', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (195, 2,
        '2024-05-09', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (195, 37,
        '2024-02-19', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (195, 20,
        '2024-07-11', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (195, 42,
        '2024-03-02', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (195, 12,
        '2024-05-17', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (196, 23,
        '2024-02-22', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (196, 39,
        '2024-01-21', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (196, 14,
        '2024-07-10', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (196, 16,
        '2024-11-03', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (196, 49,
        '2024-06-21', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (197, 14,
        '2024-07-22', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (197, 46,
        '2024-12-28', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (197, 12,
        '2024-05-10', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (197, 5,
        '2024-04-18', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (197, 11,
        '2024-08-17', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (198, 40,
        '2025-01-07', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (198, 17,
        '2024-04-12', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (198, 39,
        '2024-01-10', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (198, 6,
        '2024-03-07', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (198, 45,
        '2024-08-02', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (199, 33,
        '2024-02-04', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (199, 31,
        '2024-01-17', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (199, 39,
        '2024-01-31', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (199, 20,
        '2024-07-21', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (199, 44,
        '2024-07-05', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (200, 5,
        '2024-02-27', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (200, 35,
        '2024-04-12', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (200, 12,
        '2024-04-09', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (200, 17,
        '2024-04-28', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (200, 26,
        '2024-05-31', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (201, 27,
        '2024-10-07', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (201, 2,
        '2024-05-03', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (201, 44,
        '2024-06-11', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (201, 7,
        '2024-04-25', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (201, 21,
        '2024-08-13', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (202, 2,
        '2024-03-24', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (202, 1,
        '2024-01-14', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (202, 36,
        '2024-03-28', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (202, 23,
        '2024-04-26', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (202, 6,
        '2024-04-11', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (203, 6,
        '2024-04-13', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (203, 2,
        '2024-04-06', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (203, 34,
        '2024-05-11', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (203, 46,
        '2024-07-31', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (203, 8,
        '2024-12-24', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (204, 25,
        '2024-06-16', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (204, 40,
        '2024-05-22', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (204, 49,
        '2024-05-25', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (204, 44,
        '2024-05-19', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (204, 4,
        '2024-09-26', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (205, 7,
        '2024-04-03', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (205, 39,
        '2024-01-24', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (205, 32,
        '2024-07-11', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (205, 27,
        '2024-11-23', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (205, 49,
        '2024-05-01', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (206, 39,
        '2024-01-09', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (206, 49,
        '2024-06-11', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (206, 24,
        '2024-11-28', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (206, 35,
        '2024-05-13', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (206, 14,
        '2024-08-12', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (207, 35,
        '2024-06-06', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (207, 12,
        '2024-04-03', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (207, 46,
        '2024-06-10', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (207, 11,
        '2024-07-20', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (207, 29,
        '2024-05-10', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (208, 33,
        '2024-03-13', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (208, 43,
        '2024-06-16', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (208, 29,
        '2024-04-01', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (208, 36,
        '2024-03-27', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (208, 47,
        '2024-07-23', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (209, 27,
        '2024-08-11', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (209, 35,
        '2024-03-04', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (209, 11,
        '2024-07-06', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (209, 43,
        '2024-05-28', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (209, 40,
        '2024-12-01', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (210, 49,
        '2024-04-12', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (210, 2,
        '2024-04-26', 'En attente');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (210, 12,
        '2024-05-16', 'Refusé');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (210, 35,
        '2024-05-01', 'En cours');
COMMIT;

-- candidature
BEGIN;
INSERT INTO Candidat_Offre (idCandidat, idOffre, datePostulation, statut)
VALUES (210, 1,
        '2024-02-24', 'Refusé');
COMMIT;
