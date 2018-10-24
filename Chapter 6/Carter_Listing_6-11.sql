CREATE TABLE ##DBCredentials
(
	credential_identity NVARCHAR(4000),
	name nvarchar(128),
	target_type nvarchar(100),
	target_id int
) ;

EXEC sp_msforeachdb '
INSERT INTO ##DBCredentials 
SELECT 
	  credential_identity
	, name
	, target_type
	, target_id
FROM [?].sys.database_scoped_credentials' ;


SELECT
      'Instance Scoped'
	, credential_identity COLLATE Latin1_General_CI_AS
	, name COLLATE Latin1_General_CI_AS
	, target_type COLLATE Latin1_General_CI_AS
	, target_id
FROM sys.credentials
UNION
SELECT
      'Database Scoped'
	, credential_identity COLLATE Latin1_General_CI_AS
	, name COLLATE Latin1_General_CI_AS
	, target_type COLLATE Latin1_General_CI_AS
	, target_id
FROM ##DBCredentials ;

DROP TABLE ##DBCredentials ;
