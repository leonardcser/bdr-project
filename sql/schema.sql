-- Écrire le script SQL qui permet de créer cette base de données.
-- En utilisant uniquement les notions vues au cours, implémenter le maximum de contraintes (intégrités référentielles, clés, …) et indiquer dans le rapport toutes celles qui n’ont pas pu être implémentées. Pour les intégrités référentielles, il ne faut pas oublier de définir les ON UPDATE/ON DELETE lorsque la valeur par défaut (NO ACTION) ne convient pas/n’est pas logique et indiquer dans le rapport pourquoi.

-- Drop the public schema and all its contents
DROP SCHEMA IF EXISTS public CASCADE;

-- Recreate the public schema
CREATE SCHEMA public;

CREATE TABLE Personne (
    id INTEGER serial,
    nom VARCHAR(255) NOT NULL,
    prenom VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    PRIMARY KEY(id)
);

CREATE TABLE Adresse (
    id INTEGER serial,
    -- todo : change float to numeric ?
    latitude FLOAT NOT NULL,
    longitude FLOAT NOT NULL,
    rue VARCHAR(255) NOT NULL,
    ville VARCHAR(255) NOT NULL,
    npa VARCHAR(255) NOT NULL,
    pays VARCHAR(255) NOT NULL,
    PRIMARY KEY(id)
);

CREATE TYPE Genre AS ENUM ('Femme', 'Homme', 'Autre');

CREATE TABLE Candidat (
    idPersonne INTEGER,
    age SMALLINT NOT NULL,
    genre Genre NOT NULL,
    numeroTel VARCHAR(15) NOT NULL,
    anneesExp SMALLINT NOT NULL,
    idAdresse INTEGER  NOT NULL,
    PRIMARY KEY(idPersonne),
    CONSTRAINT Fk_Personne FOREIGN KEY Candidat.idPersonne REFERENCES Personne.id,
    CONSTRAINT Fk_Adresse FOREIGN KEY Candidat.idAdresse REFERENCES Adresse.id  NOT NULL
);

CREATE TABLE Recruteur (
    idPersonne INTEGER,
    PRIMARY KEY(idPersonne),
    CONSTRAINT Fk_Personne FOREIGN KEY Recruteur.idPersonne REFERENCES Personne.id
);

CREATE TABLE Recruteur_Candidat (
    idRecruteur INTEGER,
    idCandidat INTEGER,
    PRIMARY KEY(idRecruteur, idCandidat),
    CONSTRAINT Fk_Recruteur FOREIGN KEY Recruteur_Candidat.idRecruteur
    REFERENCES Recruteur.idPersonne,
    CONSTRAINT Fk_Candidat FOREIGN KEY Recruteur_Candidat.idCandidat
    REFERENCES Candidat.idPersonne
);

CREATE TABLE Interaction (
    id INTEGER serial,
    dateInteraction date NOT NULL,
    notesTexte VARCHAR(255) NOT NULL,
    PRIMARY KEY(id)    
);

CREATE TABLE Recruteur_Interaction (
    idRecruteur INTEGER,
    idInteraction INTEGER,
    PRIMARY KEY(idRecruteur, idInteraction),
    CONSTRAINT Fk_Recruteur FOREIGN KEY Recruteur_Interaction.idRecruteur REFERENCES
    Recruteur.idPersonne,
    CONSTRAINT Fk_Interaction FOREIGN KEY Recruteur_Interaction.idInteraction REFERENCES Interaction.id
);

CREATE TABLE Candidat_Interaction (
    idCandidat INTEGER,
    idInteraction INTEGER,
    PRIMARY KEY(idCandidat, idInteraction),
    CONSTRAINT Fk_Candidat FOREIGN KEY Candidat_Interaction.idCandidat REFERENCES Candidat.idPersonne,
    CONSTRAINT Fk_Interaction FOREIGN KEY Candidat_Interaction.idInteraction REFERENCES Interaction.id
);

CREATE TABLE Email (
    idInteraction INTEGER,
    objet VARCHAR(255) NOT NULL,
    PRIMARY KEY(idInteraction),
    CONSTRAINT Fk_Interaction FOREIGN KEY Email.idInteraction REFERENCES Interaction.id
);

CREATE TABLE Appel (
    idInteraction INTEGER,
    duree TIME NOT NULL,
    PRIMARY KEY(idInteraction),
    CONSTRAINT Fk_Interaction FOREIGN KEY Appel.idInteraction REFERENCES Interaction.id
);

CREATE TYPE TypeEntretien AS ENUM ('Technique', 'RH', 'Autre');

CREATE TABLE Entretien (
    idInteraction INTEGER,
    typeEntretien TypeEntretien NOT NULL,
    duree TIME NOT NULL,
    PRIMARY KEY(idInteraction),
    CONSTRAINT Fk_Interaction FOREIGN KEY Entretien.idInteraction REFERENCES Interaction.id
);

CREATE TABLE Offre (
    id INTEGER serial,
    idAdresse INTEGER NOT NULL,
    descriptionOffre VARCHAR(255),
    nomPoste VARCHAR(255)  NOT NULL,
    anneesExpRequises SMALLINT NOT NULL,
    datePublication date NOT NULL,
    dateCloture date,
    PRIMARY KEY(id), 
    CONSTRAINT Fk_Adresse FOREIGN KEY Offre.idAdresse REFERENCES Adresse.id    
);

CREATE TABLE ContratTravail (
    id INTEGER serial,
    debut date NOT NULL,
    fin date,
    salaireHoraire FLOAT NOT NULL,
    idOffre INTEGER  NOT NULL UNIQUE,
    PRIMARY KEY(id),
    CONSTRAINT Fk_idOffre FOREIGN KEY ContratTravail.idOffre REFERENCES Offre.id
);

-- May need to add values possible for this enum.
CREATE TYPE Statut AS ENUM ('En cours', 'Embauché', 'Refusé');

CREATE TABLE Candidat_Offre (
    idCandidat INTEGER,
    idOffre INTEGER,
    datePostulation date NOT NULL,
    statut Statut NOT NULL,
    PRIMARY KEY(idCandidat, idOffre),
    CONSTRAINT Fk_Candidat FOREIGN KEY Candidat_Offre.idCandidat REFERENCES Candidat.idPersonne,
    CONSTRAINT Fk_Offre FOREIGN KEY Candidat_Offre.idOffre REFERENCES Offre.id
);

CREATE TABLE Domaine (
    id INTEGER serial,
    nom VARCHAR(255) NOT NULL,
    PRIMARY KEY(id)
);

-- May need to add values possible for this enum
CREATE TYPE Diplome AS ENUM ('Aucun', 'Maturité Gymnasiale', 'CFC', 'Bachelor', 'Master', 'Doctorat');

CREATE TABLE Offre_Domaine (
    idOffre INTEGER,
    idDomaine INTEGER,
    diplomeRecherche Diplome NOT NULL,
    PRIMARY KEY(idOffre, idDomaine),
    CONSTRAINT Fk_Offre FOREIGN KEY Offre_Domaine.idOffre REFERENCES Offre.id,
    CONSTRAINT Fk_Domaine FOREIGN KEY Offre_Domaine.idDomaine REFERENCES Domaine
);

CREATE TABLE Candidat_Domaine (
    idCandidat INTEGER,
    idDomaine INTEGER,
    diplomePossede Diplome NOT NULL,
    PRIMARY KEY(idCandidate, idDomaine),
    CONSTRAINT Fk_Candidat FOREIGN KEY Candidat_Domaine.idCandidat REFERENCES Candidat.idPersonne,
    CONSTRAINT Fk_Domaine FOREIGN KEY Candidat_Domaine.idDomaine REFERENCES Domaine.id
);