--store procedure 

--create table
create table emp (name varchar(max), age int)
select * from emp

--sql injection into out of the sp
declare @name varchar(max) 
set @name='--manoj'
select *  from emp where name=@name and age=29    

select * from emp where age=29 and name='jan'  

---create store procedure
create procedure use_addDeails
@name  varchar(max),
@age  int
as 
begin
insert into emp values(@name, @age)


end


--exec store procedure
--1
use_addDeails 'sujit',24

--2
exec use_addDeails 'sujit',24

--3
execute use_addDeails '--manoj',34



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

select * from emp where name=@name and age=29
end



--drop procedure

drop procedure use_addDeails



--sql injection


declare @name varchar(max) 
set @name='gana'
print(@name)
exec ('select * from emp where name='+@name)


--sp advantages:
--security
--resuablity
--exe plan redundanancy
--can be encode
--sql injection will be not able to do for sp