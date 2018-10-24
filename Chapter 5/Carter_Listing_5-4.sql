USE WideWorldImporters
GO

ALTER TABLE Application.CreditCards   
ALTER COLUMN CardNumber DROP MASKED ;  
