USE WideWorldImporters
GO

--Create the certificate
CREATE CERTIFICATE CreditCardCert
WITH SUBJECT = 'Credit Card Numbers';
GO

--Create the symmetric key
CREATE SYMMETRIC KEY CreditCardKey
WITH ALGORITHM = AES_128
ENCRYPTION BY CERTIFICATE CreditCardCert;

--Open the key
OPEN SYMMETRIC KEY CreditCardKey
DECRYPTION BY CERTIFICATE CreditCardCert;

--Encrypt the data, using the symmetric key
UPDATE Application.CreditCards
        SET CardNumberEncrypted = ENCRYPTBYKEY(Key_GUID('CreditCardKey'), CardNumber);

--Close the key
CLOSE SYMMETRIC KEY CreditCardKey ;
