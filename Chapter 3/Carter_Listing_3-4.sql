CREATE DATABASE AUDIT SPECIFICATION [DatabaseAuditSpecification-WideWorldImporters]
FOR SERVER AUDIT [Audit-CarterSecureSafe]
ADD (DELETE ON OBJECT::Sales.Orders BY public) ;
