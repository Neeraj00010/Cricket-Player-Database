--Inventory-DDl.sql fie
--Name - Neeraj Kumar Bansal, Akshit Sabharwal, Varsha Surendernath
--Class - CST8215_301
--Date - 31-07-2021

DROP TABLE IF EXISTS Player_Role;
DROP TABLE IF EXISTS Province;
DROP TABLE IF EXISTS Manager;
DROP TABLE IF EXISTS Team;
DROP TABLE IF EXISTS Player;

CREATE TABLE Manager(
Manager_Id INTEGER NOT NULL,
Manager_Name varchar(20) NOT NULL,
CONSTRAINT Pk_Manager PRIMARY KEY(Manager_Id)
);

CREATE TABLE Province(
Province_Code char(3) NOT NULL,
Province_Name varchar(20) NOT NULL,
CONSTRAINT Pk_Province PRIMARY KEY(Province_Code)
);

CREATE TABLE Role(
Role_Name varchar(20) NOT NULL,
CONSTRAINT Pk_Player_Role PRIMARY KEY(Role_Name)
);

CREATE TABLE Team (
Team_Code char(3) NOT NULL,
Team_Name varchar(225) NOT NULL,
Manager_Id INTEGER NOT NULL,
Province_Code char(3) NOT NULL,
CONSTRAINT Pk_Team PRIMARY KEY(Team_Code),
CONSTRAINT Fk_Manager_Id FOREIGN KEY(Manager_Id) REFERENCES Manager(Manager_Id),
CONSTRAINT Fk_Province_Code FOREIGN KEY(Province_Code) REFERENCES Province(Province_Code)
);

CREATE TABLE Player (
Player_Id INTEGER NOT NULL,
Player_Fname varchar(20) NOT NULL,
Player_Lname varchar(20) NULL,
Payer_Age INTEGER NULL,
Player_Birth_Place varchar(20) NOT NULL,
Team_Code char(3) NOT NULL,
Manager_Id INTEGER NOT NULL,
Player_Role_Name varchar(20) NOT NULL,
CONSTRAINT Pk_Player PRIMARY KEY(Player_Id),
CONSTRAINT Fk_Team_Code FOREIGN KEY( Team_Code ) REFERENCES Team( Team_Code ),
CONSTRAINT Fk_Manager_Id FOREIGN KEY(Manager_Id) REFERENCES Manager(Manager_Id),
CONSTRAINT Fk_Player_Role_Name FOREIGN KEY(Player_Role_Name) REFERENCES Role(Role_Name)
);