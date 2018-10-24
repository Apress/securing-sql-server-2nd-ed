SELECT name
      ,SUSER_SNAME(owner_sid)
FROM sys.databases ;
