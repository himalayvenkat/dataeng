--creating a database
create database l1

-- to use the database 
use l1

-- creating the table 
create table emp(
	empid int,
	emp_name varchar(100),
	doj datetime,
	salary float
)

--inserting the values
insert into emp(empid,emp_name,doj,salary) values(1,'himalay','2019-02-11',20000000)

--inserting multiple values
insert into emp(empid,emp_name,doj,salary) values(2,'koushthubha','2019-02-12',20000000),(3,'ramesh','2019-02-11',20000000)

--to fetch the all coloums & values
select * from emp

--to fetch only a particular colums
select empid,emp_name,salary from emp

--to drop the table
drop table emp

create table ek1(
	empid int primary key,
	empName varchar(100) not null,
	doj datetime,
	position varchar(10) unique,
	email varchar(100))

drop table ek1

insert into ek1(empid,empName,doj,position,email) values(1,'himalay','2019-02-11','Founder','himalay@gmail.com'),(2,'koushthubha','2019-02-11','CEO','koushthubha@gmail.com')

select * from ek1

-- creating table with constraints like primary key,autoincrement,notnull,unique
create table ek2(
	empid int primary key identity(1,1),
	empName varchar(100) not null,
	doj datetime,
	position varchar(10) unique,
	email varchar(100))

insert into ek2(empName,doj,position,email) values('himalay','2019-02-11','Founder','himalay@gmail.com'),('koushthubha','2019-02-11','CEO','koushthubha@gmail.com')

select * from ek2