USE master ;
GO

MERGE INTO dbo.sysadminMembers AS Target
USING (
	SELECT 
		  Roles.name AS RoleName
		, Members.name AS MemberName  
	FROM sys.server_role_members RoleMembers
	INNER JOIN sys.server_principals Roles
		ON RoleMembers.role_principal_id = Roles.principal_id  
	INNER JOIN sys.server_principals AS Members  
		ON RoleMembers.member_principal_id = Members.principal_id
	WHERE Roles.name = 'sysadmin'
) AS Source
ON (Source.MemberName = Target.LoginName)
WHEN NOT MATCHED BY TARGET THEN
	INSERT (LoginName)
	VALUES (MemberName)
WHEN NOT MATCHED BY SOURCE THEN
	DELETE ;  
