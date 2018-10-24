USE WideWorldImporters
GO

CREATE PROCEDURE dbo.AddCreditCard
      @CustomerID         INT
    , @CreditCardNumber        NVARCHAR(25)
    , @CardType                NVARCHAR(50)
    , @ExpMonth                TINYINT
    , @ExpYear                 SMALLINT
    , @Password                NVARCHAR(128)
AS
BEGIN
    DECLARE @CreditCardID        INT ;

        INSERT INTO Application.CreditCards( 
            CardType ,
            ExpMonth ,
            ExpYear ,
            CardNumberEncrypted
        )
        VALUES(
            @CardType,
            @ExpMonth,
            @ExpYear,
            ENCRYPTBYPASSPHRASE(@Password, @CreditCardNumber, 0) 
        ) ;
END
GO

CREATE PROCEDURE ReturnCredCardInfo 
          @CustomerID         INT
        , @Password           NVARCHAR(128)
AS
BEGIN
    SELECT 
        CONVERT(NVARCHAR(25), DECRYPTBYPASSPHRASE(@Password,Cards.CardNumberEncrypted, 0)) AS CreditCardNumber
    FROM Application.CreditCards Cards
    WHERE Cards.CustomerID = @CustomerID ;
END
GO
