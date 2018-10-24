USE WideWorldImporters
GO

CREATE TABLE ChangeSchema
(
ID int
) ;
GO

ALTER SCHEMA Chapter4 TRANSFER dbo.ChangeSchema ;
GO
