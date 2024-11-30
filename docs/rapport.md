---
title: "Rapport de Projet BDR"
author: "Cseres Leonard, Laydu Aude, Gerber Tristan"
date: \today
geometry: margin=1.5in
header-includes:
  - \usepackage{fancyhdr}
  - \pagestyle{fancy}
  - \fancyhead[L]{Rapport de Projet BDR}
  - \fancyhead[R]{Page \thepage}
  - \fancyfoot[C]{}
  - \fancyfoot[R]{\thepage}
toc: true
lang: fr
numbersections: true
---

\newpage

# Introduction

Dans le cadre du projet de BDR, nous avons:

1. Créer le cahier des charges
2. Éffectué la modéliser
3. Implémenté physiquement la bdd
4. Codé une application

# Cahier des charges

[Consulter le cahier des charges au format PDF](cahier-des-charges.pdf)

## Objectif de l'application

Développer une application pour permettre aux recruteurs de gérer efficacement les processus de recrutement, incluant la gestion des candidats, des postes et des entretiens.

## Fonctionnalités principales

- Gestion des candidats: ajout, modification, suppression, suivi des interactions, statut.
- Gestion des offres d'emploi: création, gestion des offres, suivi des candidatures.
- Gestion des entretiens: planification et suivi des retours.
- Suivi du processus de recrutement: vue d'ensemble des candidats par poste.
- Authentification de base pour les recruteurs.

# Conception

## Modélisation Conceptuelle (Schéma EA)

Le principal défi est le tri des candidats par pertinence pour un poste donné. Il faut définir la limite entre ce qui est stocké dans la base de données et ce qui est retrouvé dans le code. Par exemple, comment quantifier l'expérience, ou la localisation ? Faut-il introduire une notion de distance par rapport à la location de l'offre et la location du candidat ? Dans le code ou dans la bdd ?

- profile
- address / lat long
- interactions:enum?
- statut table ou enum ? (historique)
- diplome enum
- expérience int

## Modélisation Relationnelle

Personne(\underline{id}, nom, prenom, email)

Recruteur(\underline{idPersonne})  
Recruteur.idPersonne reference Personne.id

Adresse(\underline{id}, latitude, longitude, rue, ville, npa, pays)

Candidat(\underline{idPersonne}, age, genre, numeroTel, annéesExp, idAdresse)  
Candidat.idPersonne reference Personne.id  
Candidat.idAdresse reference Adresse.id
Candidat.idAdresse NOT NULL UNIQUE

Recruteur_Candidat(\underline{idRecruteur, idCandidat})  
Recruteur_Candidat.idRecruteur reference Recruteur.idPersonne  
Recruteur_Candidat.idCandidat reference Candidat.idPersonne

Interaction(\underline{id}, date, notes_texte)

Recruteur_Interaction(\underline{idRecruteur, idInteraction})  
Recruteur_Interaction.idRecruteur reference Recruteur.idPersonne  
Recruteur_Interaction.idInteraction reference Interaction.id

Candidat_Interaction(\underline{idCandidat, idInteraction})  
Candidat_Interaction.idCandidat reference Candidat.idPersonne  
Candidat_Interaction.idInteraction reference Interaction.id

Email(\underline{idInteraction}, objet)  
Email.idInteraction reference Interaction.id

Appel(\underline{idInteraction}, durée)  
Appel.idInteraction reference Interaction.id

Entretien(\underline{idInteraction}, type, durée)  
Entretien.idInteraction reference Interaction.id

Offre(\underline{id}, descriptionOffre, nomPoste, annnéesExpRequises, datePublication, dateCloture, idAdresse)  
Offre.idAdresse reference Adresse.id  
Offre.idAdresse NOT NULL UNIQUE

ContratTravail(\underline{id}, début, fin, salaireHoraire, idOffre)  
ContratTravail.idOffre reference Offre.id  
ContratTravail.idOffre NOT NULL, UNIQUE

Candidat_Offre(\underline{idCandidat, idOffre}, datePostulation, statut)  
Candidat_Offre.idCandidat reference Candidat.idPersonne  
Candidat_Offre.idOffre reference Offre.id

Domaine(\underline{id}, nom)

Offre_Domaine(\underline{idOffre, idDomaine}, diplomeRecherche)
Offre_Domaine.idOffre reference Offre.id
Offre_Domaine.idDomaine reference Domaine.id

Candidat_Domaine(\underline{idCandidat, idDomaine}, diplomePossede)
Candidat_Domaine.idCandidat reference Candidat.idPersonne
Candidat_Domaine.idDomaine reference Domaine.id

# Implémentation

## Technologies Utilisées

## Structure de l'Application

## Requêtes SQL

# Tests

## Stratégie de Test

## Résultats des Tests

# Conclusion

## Bilan

## Perspectives

# Annexes

## A. Guide d'Installation et de Déploiement

## B. Manuel Utilisateur

## C. Schémas Complémentaires
