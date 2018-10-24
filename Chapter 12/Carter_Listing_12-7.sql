RESTORE DATABASE WideWorldImporters
FROM DISK = ‘F\Backups\WideWorldImporters.bak’ 
WITH FILE = 1, NOUNLOAD, STATS = 5 ;
