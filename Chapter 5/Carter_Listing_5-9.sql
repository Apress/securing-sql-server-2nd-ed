CREATE PROCEDURE ReturnCredCardInfo @CustomerID INT
AS
BEGIN
    SELECT 
	      Cust.CustomerID
		, Cust.CustomerName
		, Cust.PrimaryContact
		, CONVERT(NVARCHAR(25),DECRYPTBYPASSPHRASE('Pa$$w0rd',Cards.CardNumberEncrypted, 0)) AS CardNumber
		, Cards.CardType
		, Cards.ExpMonth
		, Cards.ExpYear
    FROM Website.Customers Cust
    INNER JOIN Application.CreditCards Cards
        ON Cust.CustomerID = Cards.CustomerID
    WHERE Cust.CustomerID = @CustomerID ;
END
