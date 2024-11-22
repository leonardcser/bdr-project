

Personne(<u>id</u>, nom, prenom, email)  

Recruteur(<u>idPersonne</u>)  
Recruteur.idPersonne reference Personne.id  

Adresse(<u>id</u>, latitude, longitude, rue, ville, npa, pays)  

Candidat(<u>idPersonne</u>, age, genre, numeroTel, annéesExp, idAdresse)  
Candidat.idPersonne reference Personne.id  
Candidat.idAdresse reference Adresse.id
Candidat.idAdresse NOT NULL

Recruteur_Candidat(<u>idRecruteur, idCandidat</u>)  
Recruteur_Candidat.idRecruteur reference Recruteur.idPersonne  
Recruteur_Candidat.idCandidat reference Candidat.idPersonne  

Interaction(<u>id</u>, date, notes_texte)  

Recruteur_Interaction(<u>idRecruteur, idInteraction</u>)  
Recruteur_Interaction.idRecruteur reference Recruteur.idPersonne  
Recruteur_Interaction.idInteraction reference Interaction.id  

Candidat_Interaction(<u>idCandidat, idInteraction</u>)  
Candidat_Interaction.idCandidat reference Candidat.idPersonne  
Candidat_Interaction.idInteraction reference Interaction.id  

Email(<u>idInteraction</u>, objet)  
Email.idInteraction reference Interaction.id  

Appel(<u>idInteraction</u>, durée)  
Appel.idInteraction reference Interaction.id  

Entretien(<u>idInteraction</u>, type, durée)  
Entretien.idInteraction reference Interaction.id  

Offre(<u>id</u>, description, nom, poste, annnéesExpRequises, datePublication, dateCloture, idAdresse)  
Offre.idAdresse reference Adresse.id  
Offre.idAdresse NOT NULL  

ContratTravail(<u>id</u>, début, fin, salaireHoraire, idOffre)  
ContratTravail.idOffre reference Offre.id  
ContratTravail.idOffre NOT NULL, UNIQUE  

Candidat_Offre(<u>idCandidat, idOffre</u>, datePostulation, statut)  
Candidat_Offre.idCandidat reference Candidat.idPersonne  
Candidat_Offre.idOffre reference Offre.id  

Domaine(<u>id</u>, nom)

Offre_Domaine(<u>idOffre, idDomaine</u>, diplomeRecherche)
Offre_Domaine.idOffre reference Offre.id
Offre_Domaine.idDomaine reference Domaine.id

Candidat_Domaine(<u>idCandidat, idDomaine</u>, diplomePossede)
Offre_Domaine.idCandidat reference Candidat.idPersonne
Offre_Domaine.idDomaine reference Domaine.id



