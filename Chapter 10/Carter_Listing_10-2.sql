EXEC sys.sp_configure 'show advanced options', 1 ;
RECONFIGURE

EXEC sys.sp_configure 'xp_cmdshell', 1 ;
RECONFIGURE

USE master
GO

EXEC xp_instance_regwrite N'HKEY_LOCAL_MACHINE', N'Software\Microsoft\MSSQLServer\MSSQLServer', N'LoginMode', REG_DWORD, 2 ;
GO

ALTER LOGIN sa ENABLE ;
GO

ALTER LOGIN sa WITH PASSWORD = 'MyPa$$w0rd123' ;
GO
