/* Assignment 02
Name - Neeraj Bansal, Akshit Sabharwal, Varsha Sundernath
Course - CST8215_301
Date - Aug 06, 2021
/*

--Union

SELECT Team_Name FROM Team
WHERE Team_Code = 'MI'
UNION
SELECT Player_Fname FROM Player
WHERE Team_Code = 'MI'
ORDER BY Team_Name;

--Views

CREATE VIEW Viewteam AS
SELECT Team_code AS T_code, Team_name AS T_name, Manager_Id AS Man_Id, province_code AS p_code
FROM Team;

CREATE VIEW Viewplayer AS
SELECT Player_Id AS P_Id, Player_Fname AS P_Firstname, Player_Lname AS P_lastname, Payer_Age AS P_age, Player_Birth_Place AS P_birth_place, Team_Code AS T_code, Manager_Id AS Man_Id, Player_Role_Name AS P_role_name
FROM Player;

--Joins

Manager.Manager_Id,Manager.Manager_Name,Player.Player_Id,Player.Player_Fname,Player.Player_Lname,Player.Manager_Id
FROM Player LEFT OUTER JOIN Manager
ON Player.Manager_Id = Manager.Manager_Id
WHERE Manager.Manager_Id IS NOT NULL;

SELECT Province.Province_Code,Province.Province_name,Team.Team_Code,Team.Team_Name,Team.Province_code
FROM Province RIGHT OUTER JOIN Team
ON Province.Province_Code = Team.Province_code
WHERE Province.Province_name IS NOT NULL;

--Metadata

SELECT DISTINCT column_name, data_type, character_maximum_length 
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'player' OR
TABLE_NAME = 'team' OR
TABLE_NAME = 'manager' OR
TABLE_NAME = 'province' OR
TABLE_NAME = 'role';

--Subquery

--1
SELECT Player_Fname, Player_Lname, Team_Code
From Player
WHERE Team_Code IN (
SELECT Team_Code
From Team 
WHERE Manager_Id IN (
SELECT Manager_Id
From Manager
WHERE Manager_Name = 'Amit_Shah') )

--2
SELECT Player_Fname, Player_Lname, Team_Code
From Player
WHERE Team_Code IN (
SELECT Team_Code
From Team 
WHERE Province_Code IN (
SELECT Province_Code
From Province
WHERE Province_Code = 'PB') )




