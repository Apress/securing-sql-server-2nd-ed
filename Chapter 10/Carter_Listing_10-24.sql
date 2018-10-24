DECLARE @UserName NVARCHAR(20) ;
DECLARE @Password NVARCHAR(512) ;

SET @UserName = 'Reuben' ;
SET @Password = ''' OR 1=1--' ;

EXEC dbo.Authenticate @UserName, @Password ;
