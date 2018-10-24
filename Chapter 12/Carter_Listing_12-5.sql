USE master
GO

CREATE CERTIFICATE BackupEncryptionCert
	WITH SUBJECT = ‘Certificate used to encrypt backups’ ;
GO
