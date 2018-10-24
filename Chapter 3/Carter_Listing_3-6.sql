USE Master
GO

CREATE SERVER AUDIT [Audit-CarterSecureSafeCustom]
TO FILE
( 
        FILEPATH = 'c:\audit_files\audit-custom'
        ,MAXSIZE = 256 MB
        ,MAX_ROLLOVER_FILES = 2147483647
        ,RESERVE_DISK_SPACE = OFF
)
WITH
( 
        QUEUE_DELAY = 1000
        ,ON_FAILURE = CONTINUE
) ;
GO

CREATE SERVER AUDIT SPECIFICATION [ServerAuditSpecification-CarterSecureSafeCustom]
FOR SERVER AUDIT [Audit-CarterSecureSafeCustom]
ADD (USER_DEFINED_AUDIT_GROUP) ;
GO

ALTER SERVER AUDIT [Audit-CarterSecureSafeCustom]
WITH (STATE = ON) ;

ALTER DATABASE AUDIT SPECIFICATION [ServerAuditSpecification-CarterSecureSafeCustom]
WITH (STATE = ON) ;
