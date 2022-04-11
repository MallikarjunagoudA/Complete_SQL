--Unique key constraint

create table friends (id int primary key identity(1,1) , frdName varchar(50), phoneNo int, email varchar(50))

--adding unique constraint
alter table friends
add constraint uq_friends_email unique(email)



--drop constraint
alter table friends
drop constraint uq_student_email 
