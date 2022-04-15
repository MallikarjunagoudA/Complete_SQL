--store procedure 

--create table
create table emp (name varchar(max), age int)


---create store procedure
create procedure use_addDeails
@name  varchar(max),
@age  int
as 
begin
insert into emp values(@name, @age)

select * from emp
end


--exec store procedure
--1
use_addDeails 'sujit',24

--2
exec use_addDeails 'sujit',24

--3
execute use_addDeails 'sujit',24



--alter store procedure
alter procedure use_addDeails
@name  varchar(max),
@age  int
as 
begin

if(@name is not null and @age is not null)
begin
insert into emp values(@name, @age)
end
--insert into emp values(@name, @age)

select * from emp
end



--drop procedure

drop procedure use_addDeails