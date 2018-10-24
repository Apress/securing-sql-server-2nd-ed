CREATE TABLE ##Passwords
(
[Password]	NVARCHAR(128)	
) ;

INSERT INTO ##Passwords
VALUES ('123456'),
('password'),
('12345678'),
('1234'),
('pussy'),
('12345'),
('dragon'),
(‘qwerty’),
('696969'),
('mustang'),
('letmein'),
('baseball'),
('master'),
('michael'),
('football'),
('shadow'),
('monkey'),
('abc123'),
('pass'),
('fuckme'),
('6969'),
('jordan'),
('harley'),
('ranger'),
('iwantu') ;

SELECT l.name,
       p.[password]
FROM sys.sql_logins l
CROSS JOIN ##Passwords p
WHERE PWDCOMPARE(p.Password,l.password_hash) = 1 ;


DROP TABLE ##Passwords ;
