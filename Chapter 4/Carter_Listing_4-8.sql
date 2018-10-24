USE WideWorldImporters
GO

CREATE TABLE Application.CreditCards
(
	CardID     INT           NOT NULL,
	CardType   NVARCHAR(50)  NOT NULL,
	CardNumber NVARCHAR(20)  NOT NULL
) ;

INSERT INTO Application.CreditCards
VALUES(1,	'SuperiorCard',	'33332664695310'),
(2,	'Distinguish',	'55552127249722'),
(3,	'ColonialVoice',	'77778344838353'),
(4,	'ColonialVoice',	'77774915718248'),
(5,	'Vista',	'11114404600042'),
(6,	'Distinguish',	'55557132036181'),
(7,	'Distinguish',	'55553635401028'),
(8,	'SuperiorCard',	'33336081193101'),
(9,	'Distinguish',	'55553465625901'),
(10,	'SuperiorCard',	'33332126386493'),
(11,	'SuperiorCard',	'33335352517363'),
(12,	'SuperiorCard',	'33334316194519'),
(13,	'Vista',	'11119775847802'),
(14,	'Distinguish',	'55553287727410'),
(15,	'SuperiorCard',	'33336866065599'),
(16,	'Vista',	'11111985451507'),
(17,	'ColonialVoice',	'77771220960729'),
(18,	'ColonialVoice',	'77773971683137'),
(19,	'ColonialVoice',	'77779803886862'),
(20,	'SuperiorCard',	'33332150058339') ;
