USE master
GO

BACKUP MASTER KEY TO FILE = ‘c:\keys\DBMasterKey_MasterDatabase’
ENCRYPTION BY PASSWORD = ‘MySecurePa$$w0rd’ ;

GO
