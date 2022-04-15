--group by

--when ever we are using the group by clause the we need to select the column carefully. the columns which are used in the select 
-----clause that are need to either in group by clause or used with aggregate functions.




USE [office1dbPractice]
GO

SELECT 
      [frdName]
      ,[phoneNo]
      ,[email]
  FROM [dbo].[friends]

GO

insert into friends values('manu1','00000000','m@gamil.com')
insert into friends values('manu2','00000000','m1@gamil.com')
insert into friends values('manu3','00000000','m2@gamil.com')
insert into friends values('manu1','000000001','m3@gamil.com')

insert into friends values('manu1','000000002','m4@gamil.com')


--using group by

select frdName,Count(frdName) as sameNameOfFriends from friends group by frdName 

--aggregate functions:
--count,sum,min,max,avg


--using Having used for filter

select frdName,Count(frdName) as sameNameOfFriends from friends group by frdName having frdName like '%1%'	






