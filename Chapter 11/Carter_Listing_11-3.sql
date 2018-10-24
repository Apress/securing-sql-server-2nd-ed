CREATE TRIGGER PreventHijack
ON ALL SERVER WITH EXECUTE AS 'sa'
FOR LOGON
AS
BEGIN
	DECLARE @SingleUser INT ;

	SET @SingleUser = 
	(
		SELECT COUNT(*) 
	  FROM sys.dm_server_registry 
	  WHERE value_name LIKE ‘SQLArg%’ AND value_data = '-m' 
	) ;  

	IF @SingleUser <> 0
	BEGIN
		IF IS_SRVROLEMEMBER('sysadmin', ORIGINAL_LOGIN()) <> 1 
		BEGIN
			ROLLBACK ;
		END
	END
END  
