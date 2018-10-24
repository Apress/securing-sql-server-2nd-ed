CREATE TRIGGER PreventHijack
ON ALL SERVER WITH EXECUTE AS 'sa'
FOR LOGON
AS
BEGIN
	DECLARE @SingleUser INT ;

	SET @SingleUser = 
	(
		SELECT COUNT(*) FROM sys.dm_server_registry WHERE value_data = '-m' 
	) ;  

	IF @SingleUser <> 0
	BEGIN
		IF ( 
			SELECT COUNT(*)
			FROM dbo.sysadminmembers  
			WHERE LoginName = ORIGINAL_LOGIN()
			) = 0
		BEGIN
			ROLLBACK ;
		END
	END
END   
