--when a db create the two files get created. .mdf and .ldf

create database TestingDB

--rename database
--a. alter 

alter database TestingDB modifiedname=newDB

--b. using system sp

exec sp_renamedb 'testingDB','NewTestingDB'


--drop table 
--make a db for single user

alter database newtestingDB set single_user with rollback immediate

drop database NewTestingDB