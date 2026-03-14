/* 

========================================================
Create Database and Schemas

========================================================
Script Purpose:
	This script creates a new database named 'DataWarehouse' after checking is ts alredy exists.
	If the database exists,it is dropped and recreated. Additionally,the script sets up three schemas.
	within the database: 'bronze','Silver', and 'gold'.

Warning:
	Running the scripts	will drop the entire 'DataWarehouse' database if it exists.
	All data in the database will be permanantly deleted. procced with caution.
	and ensure you have proper backups before running the script.
*/


use master;
GO 
--drop and recreate the 'datawarehouse' database
IF EXISTS ( SELECT 1  FROM sys.databases WHERE name = 'datawarehouse')
BEGIN
	ALTER DATABASE datawarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE datawarehouse;
END;
GO

--create the 'datawarehouse' database
create database datawarehouse;

use datawarehouse;

-- create schemas--

create schema bronze;
GO
create schema silver;
GO
create schema gold;
GO
