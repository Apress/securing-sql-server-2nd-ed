--Set CardNumberEncrypted column to be NOT NULL
ALTER TABLE Application.CreditCards
ALTER COLUMN CardNumberEncrypted VARBINARY(256) NOT NULL ;

--Do not run following section, if you plan to follow later examples

ALTER TABLE Application.CreditCards
        DROP COLUMN CardNumber ;
