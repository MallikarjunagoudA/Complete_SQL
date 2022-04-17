---multi table valued function


--create
create function multi_fun()
returns @tbl Table (name varchar(max),age int)
as
begin

	insert into @tbl
	select * from emp

	return
end



---way to exe function


select * from multi_fun()

--this is low performance compare to inline
--no begin and end in inline
--we can declare the struture of the table
--we can update the inline fuction