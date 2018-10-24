SELECT 
	  t.name AS TableName
	, c.name AS ColumnName
	, c.encryption_type_desc 
        , c.encryption_algorithm_name 
        , cek.name AS ColumnEncryptionKeyName
        , cev.encrypted_value
        , cev.encryption_algorithm_name
        , cmk.name as ColumnMasterKeyName
        , cmk.key_store_provider_name AS column_master_key_store_provider_name
        , cmk.key_path 
FROM sys.columns c
INNER JOIN sys.column_encryption_keys cek 
    ON c.column_encryption_key_id = cek.column_encryption_key_id
INNER JOIN sys.tables t
    ON c.object_id = t.object_id
JOIN sys.column_encryption_key_values cev 
    ON cek.column_encryption_key_id = cev.column_encryption_key_id
JOIN sys.column_master_keys cmk 
    ON cev.column_master_key_id = cmk.column_master_key_id ;
