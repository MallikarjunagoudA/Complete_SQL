--Default constraint

--adding default constraint for existing column
alter table student
add constraint dc 
Default 1 for stdGender

--adding default constraint for a new column in existing table

alter table student
add  stdEmail varchar(max) not null
Constraint mail Default 'mallikarjuna@gmail.com'

--drop the constraint
alter table student
drop constraint mail

--drop column

alter table student
drop column stdemail
