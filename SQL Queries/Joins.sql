--JOINS


--creating the tables
create table teachers ( dprtName varchar(50) primary key,teacherID int ,teacherName varchar(50))
create table TeachersDetails (ID int primary key identity(1,1), teacherName varchar(50), phone varchar(50), email varchar(50), address varchar(50), dob date)


--adding the foreign key
alter table teachersDetails
add constraint teacherid_fk foreign key(teacherid) references teachers(teacherid)


--drop the fk
alter table teachersDetails
drop constraint teacherid_fk


--drop tables
drop table teachers
drop table TeachersDetails

--drop column
alter table teachers
drop column teacherName

--adding the foreign key
alter table teachers
add constraint teacherid_fk foreign key(teacherid) references teachersDetails(id)

--adding the values

insert into  TeachersDetails values('karne V','0000000000000', 'v@gmail.com', 'gGada','09/07/1787')
insert into  TeachersDetails values('rm bingi','0000000000000', 'v@gmail.com', 'gGada','09/07/1787')
insert into  TeachersDetails values('nisar T','0000000000000', 'v@gmail.com', 'gGada','09/07/1787')

insert into  TeachersDetails values('hosalli V','0000000000000', 'v@gmail.com', 'gGada','09/07/1787')
insert into  TeachersDetails values('rm karthik','0000000000000', 'v@gmail.com', 'gGada','09/07/1787')
insert into  TeachersDetails values('herakal T','0000000000000', 'v@gmail.com', 'gGada','09/07/1787')



insert into teachers values('science',2)
insert into teachers values('mathes',2)
insert into teachers values('english',3)
insert into teachers values('hindi',3)
insert into teachers values('kannada',1)
insert into teachers values('social',1)


--validate
select * from teachers
select * from teachersdetails

--
---------------------joins------------------------------

--1. join 

select * from teachers a join teachersdetails b on a.teacherid=b.id

--inner join

select * from teachers a inner join teachersdetails b on a.teacherid=b.id

--lfet join or left outer join
select * from teachers a left join teachersdetails b on a.teacherid=b.id

select * from teachers a left outer join teachersdetails b on a.teacherid=b.id

--right join or right outer join

select * from teachers a right join teachersdetails b on a.teacherid=b.id

select * from teachers a right outer join teachersdetails b on a.teacherid=b.id
 



 --outer join or full outer join
 select * from teachers a full join teachersdetails b on a.teacherid=b.id

select * from teachers a full outer join teachersdetails b on a.teacherid=b.id

--
 --cross join or cartestin join ---it will not support the on clause
 select * from teachers  cross join teachersdetails 

  select * from teachersdetails  cross join teachers 



  --advanced or intelligent joins
  
--lfet join or left outer join ---to get only left values which are not matched
select * from teachers a left join teachersdetails b on a.teacherid=b.id where a.teacherid is null

select * from teachers a left outer join teachersdetails b on a.teacherid=b.id where b.id is null

--right join or right outer join --to get the only right values which are not matched

select * from teachers a right join teachersdetails b on a.teacherid=b.id  where a.teacherid is null

select * from teachers a right outer join teachersdetails b on a.teacherid=b.id  where b.id is null
 


 --outer join or full outer join
 select * from teachers a full join teachersdetails b on a.teacherid=b.id where b.id is null  and a.teacherid is null

select * from teachers a full outer join teachersdetails b on a.teacherid=b.id  where b.id is null  and a.teacherid is null


--self join

select * from teachers a full outer join teachers b on a.teacherid=b.id 