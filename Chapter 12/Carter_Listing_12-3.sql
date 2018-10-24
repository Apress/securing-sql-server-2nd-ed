USE master
GO

SELECT *
FROM sys.symmetric_keys
WHERE name = ‘##MS_DatabaseMasterKey##’ ;
GO
