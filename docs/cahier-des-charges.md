---
title: "Cahier des Charges"
subtitle: "Projet BDR"
author: [Leonard Cseres, Aude Laydu, Tristan Gerber]
date: \today
# geometry: margin=3.5cm
# toc: true
papersize: a4
lang: fr
---

```{=latex}
\hspace{4cm}
\tableofcontents
\pagebreak
```

## 1. Objectif de l'application

Développer une application pour permettre aux recruteurs de gérer efficacement les processus de recrutement, incluant la gestion des candidats, des postes et des entretiens.

## 2. Fonctionnalités principales

### 2.1 Gestion des candidats

- Ajout, modification et suppression de candidats.
- Suivi de l'historique des interactions (emails, appels, entretiens) sous format de notes textuelles.
- Statut du candidat (nouveau, en entretien, embauché, rejeté).
<!-- TODO: Decide what filter we want to implement -->
- Recherche par filtres: domaine, diplôme, localisation, expérience

### 2.2 Gestion des offres d'emploi

- Création et gestion d’offres (titre, description, domaine, diplôme requis, localisation).
- Suivi des candidatures par poste.
- Associer les candidats à un poste.
- Tri des candidats par pertinence pour un poste donné.

### 2.3 Gestion des entretiens

- Planification des entretiens (date, heure, type).
- Suivi des retours sur les entretiens.

### 2.4 Suivi du processus de recrutement

- Vue d'ensemble des candidats par poste ou par recruteur.
- Workflow des statuts des candidats (du premier contact à l'embauche ou au rejet).

### 2.5 Authentification de base

- Permettre aux recruteurs de se connecter à l'application avec leur adresse mail.
