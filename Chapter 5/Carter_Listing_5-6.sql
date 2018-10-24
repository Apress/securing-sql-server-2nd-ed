  UPDATE Application.CreditCards
  SET CardNumberEncrypted = ENCRYPTBYPASSPHRASE('Pa$$w0rd', CardNumber, 0) ;
