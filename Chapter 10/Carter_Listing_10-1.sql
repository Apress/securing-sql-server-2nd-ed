CREATE DATABASE CarterSecureSafe ;
GO

USE CarterSecureSafe 
GO

CREATE TABLE dbo.Users
(
	ID	INT	IDENTITY	PRIMARY KEY NOT NULL,
	UserName	NVARCHAR(128)	NOT NULL,
	UserPassword	NVARCHAR(512)	NOT NULL
) ;
GO

INSERT INTO dbo.Users(UserName, UserPassword)
VALUES('Pete', 'Password1'),
	  ('Danni', 'MyPassword'),
	  ('Iris', 'legofriends'),
	  ('Reuben', 'Jupiter'),
	  ('Fin', 'Doughvinci') ;
GO

SELECT *
INTO dbo.SalesOrderDetails
FROM WideWorldImporters.Sales.Orders ;
GO

SELECT *
INTO dbo.SalesOrderHeader
FROM WideWorldImporters.Sales.OrderLines ;
GO
