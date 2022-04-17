---inline table value function


--create of inline function

create function getEmpDetails()
returns table
as
return(select * from emp)


--way to call inline valued function
select * from  office1dbpractice.dbo.getEmpDetails()

--drop function
drop  function .dbo.getEmpDetails


--the table returned by table valued function can be also be used in joins with other tables.

