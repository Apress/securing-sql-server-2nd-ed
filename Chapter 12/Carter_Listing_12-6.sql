BACKUP DATABASE WideWorldImporters
	TO  DISK = ‘C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\Backup\WideWorldImporters.bak’ 
	WITH FORMAT, INIT, SKIP, NOREWIND, NOUNLOAD,
	MEDIANAME = ‘WideWorldImportersEncrypted’,  
	NAME = ‘WideWorldImporters-Full Database Backup’, 
	ENCRYPTION(ALGORITHM = AES_256, SERVER CERTIFICATE = BackupEncryptionCert),  
	STATS = 10 ;
GO
