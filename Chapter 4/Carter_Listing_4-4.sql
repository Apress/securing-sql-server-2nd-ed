USE WideWorldImporters
GO

CREATE TABLE Application.Employees
(
 EmployeeID    INT           NOT NULL    PRIMARY KEY,
 NINumber      NVARCHAR(15)  NOT NULL,
 LoginName     NVARCHAR(256) NOT NULL,
 Manager       HIERARCHYID   NULL,
 Title         NVARCHAR(256) NOT NULL
) ;

INSERT INTO Application.Employees
VALUES(1, 295847284, 'WideWorldImporters\ken0', '/', 'Chief Executive Officer'),
(2 ,245797967 ,'WideWorldImporters\terri0', '/1/', 'Vice President of Engineering'),
(3 ,509647174 ,'WideWorldImporters\roberto0', '/1/1/', 'Engineering Manager'),
(4 ,112457891 ,'WideWorldImporters\rob0',     '/1/2/', 'Senior Tool Designer'),
(5 ,695256908 ,'WideWorldImporters\gail0', '/1/1/1/', 'Design Engineer'),
(6 ,998320692 ,'WideWorldImporters\jossef0', '/1/1/2/', 'Design Engineer'),
(7 ,134969118 ,'WideWorldImporters\dylan0', '/1/3/', 'Research and Development Manager'),
(8 ,811994146 ,'WideWorldImporters\diane1', '/1/3/1/', 'Research and Development Engineer'),
(9 ,658797903 ,'WideWorldImporters\gigi0', '/1/3/2/', 'Research and Development Engineer'),
(10 ,879342154 ,'WideWorldImporters\michael6', '/1/3/3/', 'Research and Development Manager'),
(12 ,480168528 ,'WideWorldImporters\thierry0', '/1/2/1/', 'Tool Designer'),
(13 ,486228782 ,'WideWorldImporters\janice0', '/1/2/2/', 'Tool Designer'),
(14 ,42487730 ,'WideWorldImporters\michael8', '/1/2/1/', 'Senior Design Engineer'),
(15 ,56920285 ,'WideWorldImporters\sharon0', '/1/2/1/1/', 'Design Engineer'),
(17 ,253022876 ,'WideWorldImporters\kevin0', '/2/', 'Head of Marketing'),
(18 ,222969461 ,'WideWorldImporters\john5', '/2/1/', 'Marketing Specialist'),
(19 ,52541318 ,'WideWorldImporters\mary2', '/2/1/1/', 'Marketing Assistant'),
(20 ,323403273 ,'WideWorldImporters\wanida0', '/2/1/2/', 'Marketing Assistant'),
(21 ,243322160 ,'WideWorldImporters\terry0', '/2/2/', 'Marketing Specialist'),
(22 ,95958330 ,'WideWorldImporters\sariya0', '/2/3/', 'Marketing Specialist'),
(23 ,767955365 ,'WideWorldImporters\mary0', '/2/4/', 'Marketing Specialist'),
(24 ,72636981 ,'WideWorldImporters\jill0', '/2/5/', 'Marketing Specialist'),
(26 ,277173473 ,'WideWorldImporters\peter0', '/3/', 'Production Control Manager') ;
