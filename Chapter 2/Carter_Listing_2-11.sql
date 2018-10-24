USE master
GO

EXEC sp_configure 'show advanced options', 1 ;
GO

RECONFIGURE ;
GO

EXEC sp_configure 'contained database authentication', '1' ;
GO

RECONFIGURE WITH OVERRIDE ;

ALTER DATABASE WideWorldImporters
        SET CONTAINMENT = PARTIAL 
        WITH NO_WAIT ;
GO

USE WideWorldImporters
GO

CREATE USER Pete 
        WITH PASSWORD = 'Pa$$w0rd123' ;
GO
