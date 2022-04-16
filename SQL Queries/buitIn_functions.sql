--built in functions

create table emp (name varchar(max), age int)
select * from emp

insert into emp values('  mint  ', 25)

insert into emp values('94', 25)

insert into emp values('a', 25)
insert into emp values('a', 97)


insert into emp values('abc@gmail.com', 25)
insert into emp values('a@google.com', 97)
insert into emp values('amano@yahoo.com', 25)
insert into emp values('telangan@outlook.com', 97)
insert into emp values('abc@gmail.com', 25)
insert into emp values('a@google.com', 97)
insert into emp values('amano@yahoo.com', 25)
insert into emp values('telangan@outlook.com', 97)
--ascii int expression
select  ascii(name) as asciivalue, age from emp


--char 
select  char(age) as asciivalue, age from emp
 

 --LTRIM expression EX mint
select  LTRIM(name) as nameis, age from emp


 --RTRIM expression ex mint
select  RTRIM(name) as nameis, age from emp

--lower

select lower(name) as name, age from emp


--upper
select upper(name) as name, age from emp


---string functions

--len
select len(name) as nameLen, age from emp

--reverse

select reverse(name) as reverseName, age from emp



--left

select left(name,2) start2char, age from emp


--right

select right(name, 3), age from emp

--charIndex

select charIndex('@',name) as charinde, age from emp


--substring
select SUBSTRING(name,charindex('@',name)+1,len(name)) as domain, count(*) as total from emp where name like '%@%' group by SUBSTRING(name,charindex('@',name)+1,len(name)) 


--replicate

select substring(name,1,1)+REPLICATE('*',5)+SUBSTRING(name,charindex('@',name),len(name)) as email, count(*)
as total from emp where name like '%@%' group by  substring(name,1,1)+REPLICATE('*',5)+SUBSTRING(name,charindex('@',name),len(name)) 


---spaces  --used to insert the spaces the result

select name + space(5) +name from emp where age=97


--PATINDEX (PATTERN INDEX)

select name, PATINDEX('%@outlook%',name) as noOfOccurrance from emp where PATINDEX('%@outlook%',name) >0 


--REPLACE() 


update emp set name =(select top 1 replace(name,'.com','.net') as replaceEmail from emp where name like '%.com%') where name like '%.com%'

select replace(name,'.net','.com') as replaceEmail from emp where name like '%.net%'



