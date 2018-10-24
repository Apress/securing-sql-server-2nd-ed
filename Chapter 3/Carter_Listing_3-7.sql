CREATE TRIGGER FireCustomEvent
ON Sales.Orders
AFTER INSERT
AS
BEGIN
      IF (SELECT COUNT(*) FROM Inserted) > 5
      BEGIN
       EXEC sys.sp_audit_write 1, 1, 'More than 5 items order' ;
      END
END ;
