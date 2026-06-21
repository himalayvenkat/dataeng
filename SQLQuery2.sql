use AdventureWorksDW2025

select * from DimProduct

select * from dimaccount

select max(ParentAccountCodeAlternateKey) as MAX1 from dimaccount

select min(ParentAccountCodeAlternateKey) as Min1 from dimaccount

select distinct ParentAccountCodeAlternateKey from dimaccount

select count(ParentAccountCodeAlternateKey) from dimaccount

select ParentAccountCodeAlternateKey from dimaccount

select * from dimaccount

select * from DimAccount
order by AccountCodeAlternateKey 

select * from DimAccount
order by AccountCodeAlternateKey desc

select * from DimAccount
where AccountCodeAlternateKey >6000

select * from DimAccount
where AccountCodeAlternateKey between 6000 and 8000

-- this will not work as its not there but the below will be the condition like this AccountCodeAlternateKey="RED" or AccountCodeAlternateKey="silver"
select * from DimAccount
where AccountCodeAlternateKey in('red','silver')

select * from DimAccount
where AccountDescription like 'r%'

select * from DimAccount
where AccountDescription like '_a%'


use l1

create table ek112(
empid int primary key identity(1,1),
kx1 varchar(100),
city varchar(100) default 'London',
email varchar(100),
salary float check(salary >= 10000)
)

-- Use the default value (London) for city
insert into ek112(kx1,email,salary) values ('juju','kx1@gmail.com',12000)

select * from ek112

-- its always good if we do any changes in the table in dummy one 
-- so for that to create dummy table witch contains same data

use AdventureWorksDW2025

select * into dimaccount_bk from DimAccount

select * from dimaccount_bk

-- if we want to copy only the table syntax but not the data then 
select * into dimaccount_bk1 from DimAccount
where 1= 2

select * from dimaccount_bk1

-- to update a value
select * from dimaccount_bk

update dimaccount_bk set ParentAccountCodeAlternateKey = 1170
where ParentAccountCodeAlternateKey = 1120

-- to drop a record
DELETE FROM dimaccount_bk
WHERE AccountKey = 1;

-- to drop a table 
drop table dimaccount_bk

truncate table dimaccount_bk

/*
DELETE → Remove selected rows.
TRUNCATE → Remove all rows, keep the table.
DROP → Remove the entire table itself.
*/



