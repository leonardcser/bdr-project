-- Écrire le script SQL qui permet de créer cette base de données.
-- En utilisant uniquement les notions vues au cours, implémenter le maximum de contraintes (intégrités référentielles, clés, …) et indiquer dans le rapport toutes celles qui n’ont pas pu être implémentées. Pour les intégrités référentielles, il ne faut pas oublier de définir les ON UPDATE/ON DELETE lorsque la valeur par défaut (NO ACTION) ne convient pas/n’est pas logique et indiquer dans le rapport pourquoi.

-- Drop the public schema and all its contents
DROP SCHEMA IF EXISTS public CASCADE;

-- Recreate the public schema
CREATE SCHEMA public;

CREATE TABLE Personne (
    id serial,
    nom VARCHAR(255) NOT NULL,
    prenom VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    CONSTRAINT PK_Personne PRIMARY KEY(id)
);

CREATE OR REPLACE FUNCTION check_personne() 
RETURNS TRIGGER 
LANGUAGE plpgsql 
AS $$
BEGIN
    IF NEW.idPersonne IS NULL OR NOT EXISTS (
        SELECT 1 FROM Personne WHERE id = NEW.idPersonne
    ) THEN
        RAISE EXCEPTION 'Missing person ID: %', NEW.idPersonne;
    END IF;
    RETURN NEW;
END;
$$;

CREATE TABLE Adresse (
    id serial,
    latitude FLOAT NOT NULL,
    longitude FLOAT NOT NULL,
    rue VARCHAR(255) NOT NULL,
    ville VARCHAR(255) NOT NULL,
    npa VARCHAR(255) NOT NULL,
    pays VARCHAR(255) NOT NULL,
    CONSTRAINT PK_Adresse PRIMARY KEY(id),
    CHECK (latitude > -90 AND latitude < 90),
    CHECK (longitude > -180 AND longitude < 180)
);

CREATE TYPE Genre AS ENUM ('Femme', 'Homme', 'Autre');

CREATE TABLE Candidat (
    idPersonne INTEGER,
    age SMALLINT NOT NULL,
    genre Genre NOT NULL,
    numeroTel VARCHAR(15) NOT NULL UNIQUE,
    anneesExp SMALLINT NOT NULL,
    idAdresse INTEGER NOT NULL UNIQUE,
    CONSTRAINT PK_Candidat PRIMARY KEY(idPersonne),
    CONSTRAINT FK_Personne FOREIGN KEY (idPersonne) REFERENCES Personne(id) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT FK_Adresse FOREIGN KEY (idAdresse) REFERENCES Adresse(id) ON DELETE RESTRICT ON UPDATE NO_ACTION,
    CHECK (age >= 16 AND age < 100)
);

CREATE CONSTRAINT TRIGGER trg_check_personne_candidat
AFTER INSERT ON Candidat
DEFERRABLE INITIALLY DEFERRED
FOR EACH ROW
EXECUTE FUNCTION check_personne();

CREATE TABLE Recruteur (
    idPersonne INTEGER,
    CONSTRAINT PK_Recruteur PRIMARY KEY(idPersonne),
    CONSTRAINT FK_Personne FOREIGN KEY (idPersonne) REFERENCES Personne(id) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE CONSTRAINT TRIGGER trg_check_personne_recruteur
AFTER INSERT ON Recruteur
DEFERRABLE INITIALLY DEFERRED
FOR EACH ROW
EXECUTE FUNCTION check_personne();

CREATE TABLE Recruteur_Candidat (
    idRecruteur INTEGER NOT NULL,
    idCandidat INTEGER NOT NULL,
    CONSTRAINT PK_Recruteur_Candidat PRIMARY KEY(idRecruteur, idCandidat),
    CONSTRAINT FK_Recruteur FOREIGN KEY (idRecruteur) REFERENCES Recruteur(idPersonne) ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT FK_Candidat FOREIGN KEY (idCandidat) REFERENCES Candidat(idPersonne) ON DELETE RESTRICT ON UPDATE CASCADE
);

CREATE TABLE Interaction (
    id serial,
    dateInteraction date NOT NULL,
    notesTexte VARCHAR(255) NOT NULL,
    CONSTRAINT PK_Interaction PRIMARY KEY(id)
);

CREATE OR REPLACE FUNCTION check_interaction() 
RETURNS TRIGGER 
LANGUAGE plpgsql 
AS $$
BEGIN
     IF NEW.idInteraction IS NULL OR NOT EXISTS (
        SELECT 1 FROM Interaction WHERE id = NEW.idInteraction
    ) THEN
        RAISE EXCEPTION 'Missing interaction ID: %', NEW.idInteraction;
    END IF;
    RETURN NEW;
END;
$$;

CREATE TABLE Interaction_Email (
    idInteraction INTEGER,
    objet VARCHAR(255) NOT NULL,
    CONSTRAINT PK_Interaction_Email PRIMARY KEY(idInteraction),
    CONSTRAINT FK_Interaction FOREIGN KEY (idInteraction) REFERENCES Interaction(id) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE CONSTRAINT TRIGGER trg_check_interaction_email
AFTER INSERT ON Interaction_Email
DEFERRABLE INITIALLY DEFERRED
FOR EACH ROW
EXECUTE FUNCTION check_interaction();

CREATE TABLE Interaction_Appel (
    idInteraction INTEGER,
    duree TIME NOT NULL,
    CONSTRAINT PK_Interaction_Appel PRIMARY KEY(idInteraction),
    CONSTRAINT FK_Interaction FOREIGN KEY (idInteraction) REFERENCES Interaction(id) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE CONSTRAINT TRIGGER trg_check_interaction_appel
AFTER INSERT ON Interaction_Appel
DEFERRABLE INITIALLY DEFERRED
FOR EACH ROW
EXECUTE FUNCTION check_interaction();

CREATE TYPE TypeEntretien AS ENUM ('Technique', 'RH', 'Autre');

CREATE TABLE Interaction_Entretien (
    idInteraction INTEGER,
    typeEntciretien TypeEntretien NOT NULL,
    duree TIME NOT NULL,
    CONSTRAINT PK_Interaction_Entretien PRIMARY KEY(idInteraction),
    CONSTRAINT FK_Interaction FOREIGN KEY (idInteraction) REFERENCES Interaction(id) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE CONSTRAINT TRIGGER trg_check_interaction_entretien 
AFTER INSERT ON Interaction_Entretien
DEFERRABLE INITIALLY DEFERRED
FOR EACH ROW
EXECUTE FUNCTION check_interaction(); 

CREATE TABLE Recruteur_Interaction (
    idRecruteur INTEGER NOT NULL,
    idInteraction INTEGER NOT NULL,
    CONSTRAINT PK_Recruteur_Interaction PRIMARY KEY(idRecruteur, idInteraction),
    CONSTRAINT FK_Recruteur FOREIGN KEY (idRecruteur) REFERENCES Recruteur(idPersonne) ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT FK_Interaction FOREIGN KEY (idInteraction) REFERENCES Interaction(id) ON DELETE RESTRICT ON UPDATE CASCADE
);

CREATE TABLE Candidat_Interaction (
    idCandidat INTEGER NOT NULL,
    idInteraction INTEGER NOT NULL,
    CONSTRAINT PK_Candidat_Interaction PRIMARY KEY(idCandidat, idInteraction),
    CONSTRAINT FK_Candidat FOREIGN KEY (idCandidat) REFERENCES Candidat(idPersonne) ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT FK_Interaction FOREIGN KEY (idInteraction) REFERENCES Interaction(id) ON DELETE RESTRICT ON UPDATE CASCADE
);

CREATE TABLE Offre (
    id serial,
    idAdresse INTEGER NOT NULL UNIQUE,
    descriptionOffre VARCHAR(255) NOT NULL,
    nomPoste VARCHAR(255) NOT NULL,
    anneesExpRequises SMALLINT NOT NULL,
    datePublication date NOT NULL,
    dateCloture date,
    CONSTRAINT PK_Offre PRIMARY KEY(id),
    CONSTRAINT FK_Adresse FOREIGN KEY (idAdresse) REFERENCES Adresse(id) ON DELETE RESTRICT ON UPDATE NO_ACTION,
    CHECK (dateCloture IS NULL OR dateCloture > datePublication)
);


CREATE TABLE Contrat_Travail (
    id serial,
    debut date NOT NULL,
    fin date,
    salaireHoraire FLOAT NOT NULL,
    idOffre INTEGER NOT NULL UNIQUE,
    CONSTRAINT PK_Contrat_Travail PRIMARY KEY(id),
    CONSTRAINT FK_Contrat_Travail FOREIGN KEY (idOffre) REFERENCES Offre(id) ON DELETE RESTRICT ON UPDATE NO_ACTION,
    CHECK (fin IS NULL OR fin > debut),
    CHECK (salaireHoraire > 0)
);

CREATE OR REPLACE FUNCTION check_contrat_embauche()
RETURNS TRIGGER 
LANGUAGE plpgsql
AS $$
DECLARE
    v_embauche_count INTEGER;
BEGIN
    SELECT COUNT(*) INTO v_embauche_count
    FROM Candidat_Offre
    WHERE idOffre = NEW.idOffre AND statut = 'Embauché';

    IF v_embauche_count = 0 THEN
        RAISE EXCEPTION 'Cannot create a work contract for an offer without an hired candidate';
    END IF;

    RETURN NEW;
END;
$$;

CREATE TRIGGER trg_check_contrat_embauche
BEFORE INSERT ON Contrat_Travail
FOR EACH ROW
EXECUTE FUNCTION check_contrat_embauche();

CREATE OR REPLACE FUNCTION check_fin_after_cloture() 
RETURNS TRIGGER 
LANGUAGE plpgsql
AS $$
BEGIN
    -- Check if 'fin' is provided and if it's greater than 'dateCloture' from 'Offre'
    IF NEW.fin IS NOT NULL AND NEW.fin <= (SELECT dateCloture FROM Offre WHERE id = NEW.idOffre) THEN
        RAISE EXCEPTION 'The contract end date (fin) must be greater than the offer closure date (dateCloture)';
    END IF;
    RETURN NEW;
END;
$$;

CREATE TRIGGER trg_check_fin_after_cloture
BEFORE INSERT OR UPDATE ON Contrat_Travail
FOR EACH ROW
EXECUTE FUNCTION check_fin_after_cloture();

-- May need to add values possible for this enum.
CREATE TYPE Statut AS ENUM ('En attente', 'En cours', 'Embauché', 'Refusé');

CREATE TABLE Candidat_Offre (
    idCandidat INTEGER NOT NULL,
    idOffre INTEGER NOT NULL,
    datePostulation date NOT NULL,
    statut Statut NOT NULL,
    CONSTRAINT PK_Candidat_Offre PRIMARY KEY(idCandidat, idOffre),
    CONSTRAINT FK_Candidat FOREIGN KEY (idCandidat) REFERENCES Candidat(idPersonne) ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT FK_Offre FOREIGN KEY (idOffre) REFERENCES Offre(id) ON DELETE RESTRICT ON UPDATE NO_ACTION
);

CREATE OR REPLACE FUNCTION check_candidat_offre_constraints()
RETURNS TRIGGER
LANGUAGE plpgsql
AS $$
DECLARE
    v_datePublication date;
    v_dateCloture date;
BEGIN
    -- Get the datePublication and dateCloture from the related Offre
    SELECT datePublication, dateCloture INTO v_datePublication, v_dateCloture
    FROM Offre WHERE id = NEW.idOffre;

    -- Check if statut is 'Embauché' and dateCloture is NULL
    IF NEW.statut = 'Embauché' AND v_dateCloture IS NULL THEN
        RAISE EXCEPTION 'The offer closure date (dateCloture) must not be NULL when the status is "Embauché"';
    END IF;

    -- Check if datePostulation is between datePublication and dateCloture
    IF NEW.datePostulation < v_datePublication OR 
       (v_dateCloture IS NOT NULL AND NEW.datePostulation > v_dateCloture) THEN
        RAISE EXCEPTION 'The postulation date (datePostulation) must be between the offer publication date (datePublication) and closure date (dateCloture)';
    END IF;

    RETURN NEW;
END;
$$;

CREATE TRIGGER trg_check_candidat_offre_constraints
BEFORE INSERT OR UPDATE ON Candidat_Offre
FOR EACH ROW
EXECUTE FUNCTION check_candidat_offre_constraints();

CREATE TABLE Domaine (
    id serial,
    nom VARCHAR(255) NOT NULL,
    CONSTRAINT PK_Domaine PRIMARY KEY(id)
);

CREATE OR REPLACE FUNCTION check_domaine_link()
RETURNS TRIGGER 
LANGUAGE plpgsql
AS $$
DECLARE
    v_candidat_count INTEGER;
    v_offre_count INTEGER;
BEGIN
    SELECT COUNT(*) INTO v_candidat_count
    FROM Candidat_Domaine
    WHERE idDomaine = NEW.id;

    SELECT COUNT(*) INTO v_offre_count
    FROM Offre_Domaine
    WHERE idDomaine = NEW.id;

    IF v_candidat_count = 0 AND v_offre_count = 0 THEN
        RAISE EXCEPTION 'A domain must be linked to at least one candidate or job offer';
    END IF;

    RETURN NEW;
END;
$$;

CREATE TRIGGER trg_check_domaine_link
AFTER INSERT OR UPDATE ON Domaine
FOR EACH ROW
EXECUTE FUNCTION check_domaine_link();

-- May need to add values possible for this enum
CREATE TYPE Diplome AS ENUM ('Aucun', 'Maturité Gymnasiale', 'CFC', 'Bachelor', 'Master', 'Doctorat');

CREATE TABLE Offre_Domaine (
    idOffre INTEGER NOT NULL,
    idDomaine INTEGER NOT NULL,
    diplomeRecherche Diplome NOT NULL,
    CONSTRAINT PK_Offre_Domaine PRIMARY KEY(idOffre, idDomaine),
    CONSTRAINT FK_Offre FOREIGN KEY (idOffre) REFERENCES Offre(id) ON DELETE RESTRICT ON UPDATE NO_ACTION,
    CONSTRAINT FK_Domaine FOREIGN KEY (idDomaine) REFERENCES Domaine(id) ON DELETE RESTRICT ON UPDATE NO_ACTION
);

CREATE TABLE Candidat_Domaine (
    idCandidat INTEGER NOT NULL,
    idDomaine INTEGER NOT NULL,
    diplomePossede Diplome NOT NULL,
    CONSTRAINT PK_Candidat_Domaine PRIMARY KEY(idCandidat, idDomaine),
    CONSTRAINT FK_Candidat FOREIGN KEY (idCandidat) REFERENCES Candidat(idPersonne) ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT FK_Domaine FOREIGN KEY (idDomaine) REFERENCES Domaine(id) ON DELETE RESTRICT ON UPDATE NO_ACTION
);