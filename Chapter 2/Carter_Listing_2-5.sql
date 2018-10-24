DECLARE @password NVARCHAR(MAX) = 'C0mplexPa$$w0rd' ;
DECLARE @salt VARBINARY(4) = CRYPT_GEN_RANDOM(4) ;
DECLARE @hash VARBINARY(1000) ;
DECLARE @SQL NVARCHAR(MAX) ;

SET @hash = (SELECT 0x0200 + @salt + HASHBYTES('SHA2_512', CAST(@password AS VARBINARY(MAX)) + @salt)) ;

SET @SQL = (SELECT 'CREATE LOGIN ' 
                                + Name 
                                + ' WITH PASSWORD = ' 
                                + CONVERT(NVARCHAR(1000), @hash, 1) 
                                + ' HASHED, SID = 0x'
                                + CONVERT(NVARCHAR(64), SID, 2)
                        FROM sys.sql_logins
                        WHERE is_disabled = 0
                        FOR XML PATH('')) ;

SELECT @SQL ;
