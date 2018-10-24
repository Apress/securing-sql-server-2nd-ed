--Standard

BACKUP DATABASE WideWorldImporters
TO  DISK = ‘C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\Backup\WideWorldImporters.bak’ 
WITH NAME = ‘WideWorldImporters-Full Database Backup - Standard’, 
NOFORMAT, NOINIT,  SKIP, NOREWIND, NOUNLOAD, NO_COMPRESSION,  STATS = 10 ;

GO

--Compressed Only

BACKUP DATABASE WideWorldImporters
TO  DISK = ‘C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\Backup\WideWorldImportersCompressed.bak’ 
WITH NAME = ‘WideWorldImporters-Full Database Backup - Compressed’, 
NOFORMAT, NOINIT, SKIP, NOREWIND, NOUNLOAD, COMPRESSION,  STATS = 10 ;

GO

--Encrypted Only

BACKUP DATABASE WideWorldImporters
TO  DISK = ‘C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\Backup\WideWorldImportersEncrypted.bak’ 
WITH MEDIANAME = ‘WideWorldImporters-Encrypted’,  
NAME = ‘WideWorldImporters-Full Database Backup - Encrypted’, 
FORMAT, INIT, SKIP, NOREWIND, NOUNLOAD, NO_COMPRESSION, STATS = 10,
ENCRYPTION(ALGORITHM = AES_128, SERVER CERTIFICATE = BackupEncryptionCert) ;

GO

--Encrypted and Compressed

BACKUP DATABASE WideWorldImporters
TO  DISK = ‘C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\Backup\WideWorldImportersEncryptedAndCompressed.bak’ 
WITH MEDIANAME = ‘WideWorldImporters-Encrypted’,  
NAME = ‘WideWorldImporters-Full Database Backup - Encrypted and Compressed’, 
FORMAT, INIT, SKIP, NOREWIND, NOUNLOAD, COMPRESSION, 
ENCRYPTION(ALGORITHM = AES_128, SERVER CERTIFICATE = BackupEncryptionCert),  STATS = 10 ;

GO
