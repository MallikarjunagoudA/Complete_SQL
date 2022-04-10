--create a table

create table student (id int primary key identity(1,1), stdName varchar(max), stdGender int)

create table tblMaster (id int primary key identity(1,1), type varchar(50), colValue varchar(50))

alter table student add Constraint Gender_FK foreign key(stdGender) references tblMaster (id)

