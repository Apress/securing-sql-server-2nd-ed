EXEC sp_configure 'show advanced option', 1 ;
RECONFIGURE
GO

EXEC sp_configure 'xp_cmdshell', 0 ;
RECONFIGURE
GO
