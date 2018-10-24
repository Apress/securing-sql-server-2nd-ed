SELECT 
     DB_NAME(dek.database_id) AS DatabaseName
    ,c.name AS CertificateName
FROM WideWorldImporters.sys.dm_database_encryption_keys dek
INNER JOIN master.sys.certificates c
ON c.thumbprint = dek.encryptor_thumbprint
WHERE c.pvt_key_last_backup_date IS NULL ; 
