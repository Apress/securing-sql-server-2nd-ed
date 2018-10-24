--Backup Service Master Key

BACKUP SERVICE MASTER KEY
TO FILE = 'c:\keys\service_master_key'
ENCRYPTION BY PASSWORD = 'Pa$$w0rd' ;

--Restore Service Master Key

RESTORE SERVICE MASTER KEY
FROM FILE = 'c:\keys\service_master_key'
DECRYPTION BY PASSWORD = 'Pa$$w0rd' ;
