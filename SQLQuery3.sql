use AdventureWorksDW2025

select * from dimcustomer

select concat(firstName,middleName,lastName) fullname from dimcustomer -- this will not have spaces

select concat_ws(' ',firstName,middleName,lastName) fullname from dimcustomer -- this will have the spaces

select LEFT(MiddleName,3) from DimCustomer -- it will give the 3 chars for the coloum middlename if the middle name contains only one char then it will give only that value

select right(firstname,2) from dimcustomer -- it will give from the right side

select upper(firstname) from dimcustomer -- to convert to upper case

select lower(firstname) from dimcustomer -- to conver to lower case

/*
select substring(coloum name,starting number in int,length of which we want)
*/

select * from dimcustomer

select substring(firstname,2,3) from dimcustomer

select trim(' hello ')  -- trim will delete the white space  in front and last

select ltrim(' Hello ') -- trim white space only on the left side

select rtrim(' hello ') -- trim white space only on the right side

select len('Himalay') -- length of the value  , we can also give coloum name also

select REPLACE('Himalay','a','z') -- here a will be replaced by the z

select REVERSE('himalay') -- reverse the value

/*
STUFF(character_expression, start, length, replaceWithExpression)
character_expression → Original string
start → Position to start deleting
length → Number of characters to delete
replaceWithExpression → New text to insert
*/

select stuff('Himalay Venkat',9,6,' Sreevalli') 

select * from dimcustomer

select firstname+lastname LFname from dimcustomer -- + also shows the concat but not to that extanct

select firstname+space(1)+lastname LFname from dimcustomer -- here space(1) means space will be added 1 time , if space(2) means 2 times space added

select firstname + ' '+lastname from dimcustomer

select * from dimcustomer

select firstname+space(1)+isnull(middlename,'')+space(1)+lastname from dimcustomer -- isnull function will take 2 args 1 = coloum name, 2 = if its null the what it should be replaced

create table emp2(
empid int primary key identity(1,1),
empname varchar(100))

insert into emp2(empname) values ('himalay'),('sreevalli')

select * from emp2

-- now i want to add the city to the DB emp2 table
alter table emp2
add city1 varchar(100) default 'london'

insert into emp2(empname) values ('huh'),('puo')

-- if we want to drop a coloum
alter table emp2
drop column city1

/* 
we will get error as there is default constraint on the emp table for city1 column
so first we need to delete the constraints

The error shows like this 
Msg 5074, Level 16, State 1, Line 74 The object 'DF__emp2__city1__40F9A68C' is dependent on column 'city1'. Msg 4922, Level 16, State 9, Line 74 ALTER TABLE DROP COLUMN city1 failed because one or more objects access this column.
*/
ALTER TABLE emp2
DROP CONSTRAINT DF__emp2__city1__40F9A68C

ALTER TABLE emp2
DROP COLUMN city1;

select * from emp2


