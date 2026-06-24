use AdventureWorksDW2025

select * from dimemployee

-- date time functions

select getdate()
-- 2026-06-24 23:16:35.790

select SYSDATETIME()
-- 2026-06-24 23:16:59.5962377

select sysutcdatetime()
-- 2026-06-24 17:47:34.5797251

select datefromparts(2023,10,17)
-- 2023-10-17

select DATETIMEFROMPARTS(2023,10,17,23,04,10,12)
-- 2023-10-17 23:04:10.013

select year(getdate())
-- 2026

select month(getdate())
-- 6

select day(getdate())
-- 24

-- datepart will be always return int only

select datepart(yyyy,getdate())
-- 2026

select datepart(mm,getdate())
-- 6

select datepart(dd,getdate())
-- 24

select datename(yyyy,getdate())
-- 2026

select datename(MM,getdate())
-- june

select datename(mm,getdate())
-- june

select datename(dd,getdate())
-- 24

select datename(weekday,getdate())
-- Wednesday

select format(getdate(),'yy')
-- 26

select format(getdate(),'yyyy')
-- 2026

select format(getdate(),'MM')
-- 06

select format(getdate(),'mm')
-- 28 Here mm ----> minutes , MM ---> Month

select format(getdate(),'dd')
-- 24

select format(getdate(),'MMM')
-- Jun

select format(getdate(),'MMMM')
-- june

select format(getdate(),'hh:mm')
-- 11:31

select dateadd(year,1,getdate())
-- 2027-06-24 23:32:15.417
-- the above function will give the addition of 1 to the year for the getdate value

select dateadd(year ,1,hiredate) promotionDate from dimemployee

select dateadd(month,10,getdate())
-- 2027-04-24 23:34:49.540

select datediff(year,datefromparts(2023,10,11),getdate())
-- years diff = 3

select datediff(MM,datefromparts(2023,10,11),getdate())
-- months diff = 32

select datediff(dd,datefromparts(2023,10,11),getdate())
-- days difference  987
--- syntax  datediff(dd,date1,date2)
-- dd ===> varible you want to calculate
-- date2-date1 = datediff

select eomonth(getdate())
-- eomonth means "end of the month"
-- 2026-06-30


select eomonth(getdate(),1)
-- 2026-07-31
-- here 1 is added means it will go to next month