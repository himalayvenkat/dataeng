use AdventureWorksDW2025

/*
-- sql data types:

its more of theory

The below are all arranged in the decending order 

int ---> bigint,int,smallint,tinyint

float --> float,decimal

string ---> char,varchar,

date & time  ---> date,datetime,datetime2,smalldatetime,time 

ALWAYS KEEP IN MIND THAT WE NEED TO WRITE THE DATA TYPE AS BASED ON THE VALUE LENGTH AND SIZE
Difference for char and varchar

char(5) ---> inserted value is 'abc'---->then the table shows 'abc  ' {2 spaces is there so that the length will be 5}

varchar(5) ---> inserted value is 'abc'---->then the table shows 'abc'  

*/

select newid() -- its a unique id , when its executed it will be always unique and its unique identifier

drop table x1

create table x1(
empid uniqueidentifier,
ename varchar(100),
eint tinyint
)

insert into x1(empid,ename,eint) values(newid(),'himlaya',1),(newid(),'venkat',2)

select * from x1

/*
-- when executed for first time the values are 
4CF0AA64-413D-4A4E-8F15-3D1D411BA749
E9A6F0B8-BF2C-43FE-B0D2-F3D1F32EDCCD
*/

-- now i want to change the data type of the column
/*
synatx

ALTER TABLE table_name
ALTER COLUMN column_name new_data_type;
*/

alter table x1
alter column eint int


