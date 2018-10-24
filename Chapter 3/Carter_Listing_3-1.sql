USE Master
GO

CREATE SERVER AUDIT [Audit-CarterSecureSafe]
TO FILE
( 
        FILEPATH = 'C:\AuditFiles\Audit\'
        ,MAXSIZE = 256 MB
        ,MAX_ROLLOVER_FILES = 2147483647
        ,RESERVE_DISK_SPACE = OFF
)
WITH
( 
        QUEUE_DELAY = 1000
        ,ON_FAILURE = CONTINUE
)
WHERE object_name = 'sysadmin' ;
