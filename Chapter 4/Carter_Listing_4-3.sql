--Execute under current security context
SELECT SUSER_SNAME() ;

--Switch to the context of Danni
EXECUTE AS USER = 'Danni' ;

--Execute under Danni's security context
SELECT SUSER_NAME() ;
