:CONNECT CARTERSECURESAFE\ProdInstance1

DECLARE @SQL NVARCHAR(MAX) ;

SET @SQL = (SELECT 'CREATE LOGIN ' 
                        + name
                        + ' WITH PASSWORD = ''C0mplexPassw0rd'', SID = 0x'
                        + CONVERT(NVARCHAR(64), SID, 2)
                FROM sys.sql_logins
                WHERE Name = 'Danni') ;
                 
:CONNECT CARTERSECURESAFE\DRInstance1

EXEC(@SQL) ;
