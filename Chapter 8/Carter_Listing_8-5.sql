SELECT 
    name
	,covering_parent_action_name
FROM sys.dm_audit_actions
WHERE covering_parent_action_name IN ('LOGIN_CHANGE_PASSWORD_GROUP','SERVER_PRINCIPAL_CHANGE_GROUP') ;
