SELECT COUNT(*) 
FROM sys.dm_server_registry 
WHERE value_name LIKE ‘SQLArg%’ AND value_data = '-m' ;  
