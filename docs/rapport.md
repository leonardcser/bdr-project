---
title: "Rapport de Projet BDR"
author: "Cseres Leonard, Laydu Aude, Gerber Tristan"
date: \today
geometry: margin=1in
header-includes:
  - \usepackage{fancyhdr}
  - \pagestyle{fancy}
  - \fancyhead[L]{Rapport de Projet BDR}
  - \fancyhead[R]{Page \thepage}
  - \fancyfoot[L]{Cseres Leonard, Laydu Aude, Gerber Tristan}
  - \fancyfoot[C]{}
  - \fancyfoot[R]{\thepage}
toc: true
lang: fr
---



\newpage

## Introduction

Dans le cadre du projet de BDR, nous devons:
1. Créer le cahier des charges
2. Modéliser
3. Implémenter physiquement la bdd
4. Coder une application

## 1. Cahier des charges
[Consulter le cahier des charges au format PDF](cahier-des-charges.pdf)

### 1.1 Objectif de l'application
Développer une application pour permettre aux recruteurs de gérer efficacement les processus de recrutement, incluant la gestion des candidats, des postes et des entretiens.

### 1.2 Fonctionnalités principales

- Gestion des candidats : ajout, modification, suppression, suivi des interactions, statut.
- Gestion des offres d'emploi : création, gestion des offres, suivi des candidatures.
- Gestion des entretiens : planification et suivi des retours.
- Suivi du processus de recrutement : vue d'ensemble des candidats par poste.
- Authentification de base pour les recruteurs.

## 2. Conception

### 2.1 Modélisation Conceptuelle (Schéma EA)
Le principal défi est le tri des candidats par pertinence pour un poste donné. Il faut définir la limite entre ce qui est stocké dans la base de données et ce qui est retrouvé dans le code. Par exemple, comment quantifier l'expérience, ou la localisation ? Faut-il introduire une notion de distance par rapport à la location de l'offre et la location du candidat ? Dans le code ou dans la bdd ?  

- profile
- address / lat long
- interactions:enum?
- statut table ou enum ? (historique)
- diplome enum
- expérience int
 
 TODO : supprimer un recruteur est impossible.

### 2.2 Modélisation Relationnelle


## 3. Implémentation

### 3.1 Technologies Utilisées


### 3.2 Structure de l'Application


### 3.3 Requêtes SQL


## 4. Tests

### 4.1 Stratégie de Test


### 4.2 Résultats des Tests


## 5. Conclusion

### 5.1 Bilan


### 5.2 Perspectives


## Annexes

### A. Guide d'Installation et de Déploiement


### B. Manuel Utilisateur


### C. Schémas Complémentaires

