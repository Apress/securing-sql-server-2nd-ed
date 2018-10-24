USE Master
GO

--Create the Database Master Key (if it does not already exist)

CREATE MASTER KEY ENCRYPTION BY PASSWORD = 'Pa$$w0rd';
GO

--Create the Server Certificate

CREATE CERTIFICATE TDECert WITH SUBJECT = 'Certificate For TDE';
GO

USE WideWorldImporters
GO

--Create the Database Encryption Key

CREATE DATABASE ENCRYPTION KEY
WITH ALGORITHM = AES_128
ENCRYPTION BY SERVER CERTIFICATE TDECert ;
GO

--Enable TDE on the database

ALTER DATABASE WideWorldImporters
SET ENCRYPTION ON ;
GO
