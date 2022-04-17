--scalar user defined functon


--create the function
create function calAge(@dob date) 
returns int
as
begin
declare @age int

set @age =DATEDIFF(year, @dob,getdate())

return @age
end


--use the function inside the select and where clause   to cal the user defined function we need to use the full name of the function like database name and function name
select office1dbpractice.dbo.calage('12/09/1998') as age 


--alter the fucnction
alter function calAge(@dob date) 
returns int
as
begin
declare @age int

set @age =DATEDIFF(year, @dob,getdate())

return @age
end



---drop function
drop function calage