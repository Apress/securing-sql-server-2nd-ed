USE master 
GO

CREATE CERTIFICATE TDECert WITH SUBJECT = 'My DEK Certificate'; 
GO

EXEC sys.sp_MSforeachdb @command1 = 'USE ? 
IF (SELECT DB_ID()) > 4
BEGIN
    IF (SELECT is_encrypted FROM sys.databases WHERE database_id = DB_ID()) = 0
	BEGIN
        CREATE DATABASE ENCRYPTION KEY  
        WITH ALGORITHM = AES_128  
        ENCRYPTION BY SERVER CERTIFICATE TDECert 
		
	ALTER DATABASE ?  
        SET ENCRYPTION ON
	END 
END' ;
