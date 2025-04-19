-- DDL_Checkpoint - Modèle Relationnel

-- Création de la table Customer
CREATE TABLE Customer (
    Customer_id VARCHAR2(20) PRIMARY KEY,
    Customer_Name VARCHAR2(20) NOT NULL,
    Customer_Tel NUMBER NOT NULL
);

-- Création de la table Product
CREATE TABLE Product (
    Product_id VARCHAR2(20) PRIMARY KEY,
    Product_Name VARCHAR2(20) NOT NULL,
    Price NUMBER CONSTRAINT positive_price CHECK (Price > 0)
);

-- Création de la table Orders (relation entre Customer et Product)
CREATE TABLE Orders (
    Customer_id VARCHAR2(20),
    Product_id VARCHAR2(20),
    Quantity NUMBER,
    Total_amount NUMBER,
    CONSTRAINT PK_Orders PRIMARY KEY (Customer_id, Product_id),
    CONSTRAINT FK_Orders_Customer FOREIGN KEY (Customer_id) REFERENCES Customer(Customer_id),
    CONSTRAINT FK_Orders_Product FOREIGN KEY (Product_id) REFERENCES Product(Product_id)
);


-- Modifications demandées dans l'exercice

-- 1. Ajouter une colonne Catégorie à la table Product
ALTER TABLE Product ADD Categorie VARCHAR2(20);

-- 2. Ajouter une colonne Date de commande à la table Orders avec SYSDATE comme valeur par défaut
ALTER TABLE Orders ADD Date_commande DATE DEFAULT SYSDATE;