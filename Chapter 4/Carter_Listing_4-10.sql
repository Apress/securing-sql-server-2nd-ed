EXECUTE AS USER = 'terri0' ;
  SELECT 
       CardID
      ,CardType
      ,CardNumber
  FROM Application.CreditCards ;
REVERT
