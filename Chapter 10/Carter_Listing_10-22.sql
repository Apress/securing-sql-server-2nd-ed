CREATE PROCEDURE dbo.Authenticate
	  @UserName NVARCHAR(20)
	, @Password NVARCHAR(512)
AS
BEGIN
	SELECT *
	FROM dbo.Users
	WHERE UserName = @UserName
		AND UserPassword = @Password
END

GO
