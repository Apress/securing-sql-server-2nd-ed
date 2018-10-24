USE WideWorldImporters
GO

ALTER TABLE Application.CreditCards
ALTER COLUMN CardNumber ADD MASKED WITH (FUNCTION = 'partial(0,"XXXX-XXXX-XXXX-",4)');
