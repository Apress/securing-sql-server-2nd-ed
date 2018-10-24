CREATE SECURITY POLICY Security.EmployeeSecurityPolicy
ADD FILTER PREDICATE Security.fn_securitypredicate(Manager) ON Application.Employees
WITH (STATE=ON, SCHEMABINDING=ON) ;
