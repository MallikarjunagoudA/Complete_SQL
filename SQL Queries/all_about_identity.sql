--Identity

--create a table customer with identity where identity(seed(start with), increment for every insert)

create table customer (id int primary key identity(1,1), name varchar(max))
create table test (id int primary key identity(1,1), val varchar(max))

--insert datails

insert into customer values('Malliakarjun')
insert into customer values('Malliakarjun4')
insert into customer values('Malliakarjun2')
insert into customer values('Malliakarjun1')

select * from customer

--to insert with the desired id value with need to set the identity_insert on

insert into customer values(6,'Malliakarjun')
--ERROR An explicit value for the identity column in table 'customer' can only be specified when a column list is used and IDENTITY_INSERT is ON.

set  IDENTITY_INSERT customer  on

--now its allow 

insert into customer (id,name) values(6,'Malliakarjun')


--to continue with identity 

set  IDENTITY_INSERT customer  off


--retrive the last identity value

--select scope_identity

insert into customer values('jhon')
select scope_identity()

select @@IDENTITY


--create a trigger
create trigger testinsert on customer for insert 
as 
begin  
insert into test values('inserted')

end

insert into customer values('jhon')
insert into customer values('Malliakarjun1')

select scope_identity()--gives the same scoped values

select @@IDENTITY --gives the current scoped values

select IDENT_CURRENT('customer')
select IDENT_CURRENT('test')

