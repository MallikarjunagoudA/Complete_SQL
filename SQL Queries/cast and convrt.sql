--cast and covert
create table employee (name varchar(max), age int, email varchar(max), dob datetime)

insert into employee values('banu',43,'m@gmail.com',getdate())
insert into employee values('anu',45,'m@gmail.com',getdate())
insert into employee values('tanu',55,'m@gmail.com',getdate())
insert into employee values('hanu',73,'m@gmail.com',getdate())
insert into employee values('janu',63,'m@gmail.com',getdate())

--cast

select cast(dob as varchar), *  from employee


--convert

select convert(varchar,dob,103), *  from employee


