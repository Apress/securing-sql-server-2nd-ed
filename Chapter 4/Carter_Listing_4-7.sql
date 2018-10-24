USE WideWorldImporters
GO

CREATE USER terri0 WITHOUT LOGIN ;

ALTER ROLE db_datareader ADD MEMBER terri0 ;
GO

EXECUTE AS USER = 'terri0'
  SELECT * FROM Application.Employees ;
REVERT
