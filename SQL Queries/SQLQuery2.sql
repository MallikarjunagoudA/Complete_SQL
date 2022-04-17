---date fuctions


--getDate

select GETDATE() as date

--SYSDATETIME
select SYSDATETIME() as sysdatetimeis


--SYSDATETIMEOFFSET
select SYSDATETIMEOFFSET() as sysoffutc


--isdate return 0(not) 1(true)
select isdate(getdate()) as isdateis

--day
select day(getdate()) as isday


--month
select month(getdate()) as ismonth

--year
select year(getdate()) as year


--datename(datepart, date)

select datename(day,sysdatetime()) as datenameis


--datepart

select datepart(day,getdate())
select datepart(WEEKDAY,getdate())


--dateadd

select dateadd(day,13,getdate())

--dateDiff

select datediff(month,getdate(),dateadd(month,2,getdate()))


select datediff(month,getdate(),dateadd(month,2,getdate()))


