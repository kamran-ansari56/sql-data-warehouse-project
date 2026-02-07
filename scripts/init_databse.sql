


/*
==============================================================
Create Database and Schemas
==============================================================

Script Purpose:
  This script creates a new database named 'DataWarehouse' afet checking if it already exists. 
  If the database exists, it is dropped and recreated. Additionally, the script sets up three schemas within the database: 'bronze', 'silever', 'gold'.

WARNING:
  Running this script will drop the entire 'DataWarehouse' database if it exits.
  All data in the warehouse will be permanently deleted. Proceed with caution and ensure you have proper backups before running this script.
*/

USE master;
go

IF EXISTS (SELECT 1 from sys.databases where name = 'DataWarehouse')
BEGIN
	ALTER DATABSE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE DataWarehouse;
	END
	go;


-- CREATING DATAWAREHOUSE
create database DataWarehouse;

-- USING THE DATAWAREHOUSE
use DataWarehouse;

-- CREATING THE SCHEMAS
create schema bronze
go

create schema silver
go

create schema gold
go
