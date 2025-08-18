/*
==============================================
Create Database and Schemas
==============================================
Purpose : Create a new databse 'DataWarehouse'. If the database already exists it will be dropped and recreated.  We have three schemas in this database bronze, silver, gold.
Warning : Make sure this database is not already used, running the script will drop the entire database.
*/

USE MASTER
GO
CREATE DATABASE DataWarehouse;
GO
USE DataWarehouse;
GO
CREATE SCHEMA bronze;
GO
CREATE SCHEMA silver;
GO
CREATE SCHEMA gold;
GO
