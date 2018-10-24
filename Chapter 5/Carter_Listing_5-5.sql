USE WideWorldImporters
GO

ALTER TABLE Application.CreditCards ADD
        CardNumberEncrypted varbinary(8000) NULL ;
