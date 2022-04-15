--use of union and union all


--create tables
create table primarySchool(stdname varchar(50), stdmail varchar(50))
create table HighSchool(stdname varchar(50), stdmail varchar(50))

--adding data

insert into primarySchool values('malliakrjun', 'm@gmail')
insert into primarySchool values('manu', 'm@gmail')
insert into primarySchool values('gana', 'm@gmail')
insert into primarySchool values('hanamanth', 'm@gmail')
insert into primarySchool values('shankar', 'm@gmail')

insert into HighSchool values('malliakrjun', 'm@gmail')
insert into HighSchool values('manu', 'm@gmail')
insert into HighSchool values('gana', 'm@gmail')



--use of union--returns the matching data

select * from primarySchool
union 
select * from HighSchool


--use of union all --returns the all the data

select * from primarySchool
union all
select * from HighSchool

--union deals with rows and joins deals with the tables