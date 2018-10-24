DECLARE @UserName NVARCHAR(20) ;
DECLARE @Password NVARCHAR(512) ;

SET @UserName = 'Reuben' ;
SET @Password = 'T-rex' ;

EXEC dbo.Authenticate @UserName, @Password ;
