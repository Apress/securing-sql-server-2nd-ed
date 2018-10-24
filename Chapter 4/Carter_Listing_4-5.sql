USE WideWorldImporters
GO

CREATE SCHEMA Security ;  
GO  
 
CREATE FUNCTION Security.fn_securitypredicate(@Manager HIERARCHYID)  
    RETURNS TABLE  
WITH SCHEMABINDING  
AS  
    RETURN SELECT 1 AS fn_securitypredicate_result   
    FROM Application.Employees e1
    WHERE @Manager.IsDescendantOf(Manager) = 1  
        AND LoginName = 'WideWorldImporters\' + USER_NAME() ;
GO
