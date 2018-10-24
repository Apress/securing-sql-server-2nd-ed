DECLARE @thumbprint VARBINARY(20) ;  
  
SET @thumbprint = 
(
SELECT thumbprint   
FROM sys.certificates   
WHERE name LIKE '%SchemaSigningCertificate%' 
) ;  

SELECT entity_id
	 , SCHEMA_NAME(o.schema_id) + '.' + OBJECT_NAME(entity_id) AS ProcedureName
	 , is_signed
	 , is_signature_valid  
FROM sys.fn_check_object_signatures ('certificate', @thumbprint)  cos
INNER JOIN sys.objects o
	ON cos.entity_id = o.object_id
WHERE cos.type = 'SQL_STORED_PROCEDURE' ;  
GO  
