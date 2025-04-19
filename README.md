# DDL_Checkpoint

## Description

Ce dépôt contient un exercice de Data Definition Language (DDL) en SQL, consistant à créer un modèle relationnel pour un système de gestion de commandes client.

## Objectif

L'objectif était de créer un schéma de base de données relationnelle selon un modèle fourni, puis d'effectuer des modifications spécifiques sur les tables créées.

## Structure du Modèle Relationnel

Le modèle comprend trois tables principales :

**- Customer :** Stocke les informations des clients

**- Product :** Contient les détails des produits

**- Orders :** Table d'association représentant la relation plusieurs-à-plusieurs entre clients et produits

## 📁 Structure du Dossier

- `Modele_relational.png` : Représentation visuelle du modèle relationnel de la base de données.
- `Data_type_tableau.png` : Image présentant les types de données utilisés dans le schéma.
- `README.md` : Ce fichier, pour documenter le projet.
- `schema.sql` : Contient les commandes DDL pour créer les tables de la base et faire les modifications.

---

🔄 **Tips bonus** :
- Tu peux intégrer les **images directement dans le README** avec un lien comme ceci :

```md
![Modèle relationnel](./Modele_relational.png)


## Contraintes et Spécifications

La table Customer possède une clé primaire **Customer_id** et des contraintes **NOT NULL** sur certains champs.

La table Product a une contrainte de **valeur positive** sur le prix.

La table Orders utilise une clé primaire composite **(Customer_id, Product_id)** et contient des données sur les quantités et montants.

## Modifications Effectuées

Après création du schéma initial, les modifications suivantes ont été réalisées :

- Ajout d'une colonne "Categorie" (VARCHAR2(20)) à la table Product

- Ajout d'une colonne "Date_commande" (DATE) avec valeur par défaut SYSDATE à la table Orders

## Code SQL

Le fichier ```schema.sql``` contient tout le code DDL nécessaire pour créer et modifier les tables selon les spécifications demandées.

## Méthodologie de Travail

1. Analyse du modèle relationnel fourni dans les images
2. Identification des tables, attributs et contraintes
3. Rédaction du script DDL pour la création des tables
4. Implémentation des modifications demandées
5. Documentation du travail réalisé

## Outils Utilisés

**- SQL** (syntaxe Oracle)

**- Git** pour le versionnement du code
