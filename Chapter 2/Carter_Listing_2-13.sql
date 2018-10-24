USE WideWorldImporters
GO

--Create the role

CREATE ROLE SalesRole AUTHORIZATION dbo ;
GO

--Grant permissions to the role

GRANT DELETE ON SCHEMA::Sales TO SalesRole ;

GRANT INSERT ON SCHEMA::Sales TO SalesRole ;

GRANT SELECT ON SCHEMA::Sales TO SalesRole ;

GRANT UPDATE ON SCHEMA::Sales TO SalesRole ;

--Add user to the role

ALTER ROLE SalesRole ADD MEMBER Danni ;
