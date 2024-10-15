create database datamites;
show databases;
use datamites;

show tables;
drop database datamites;
-- deleted database datamites

-- sql constraints

-- not null= it ensures that the column cannot have null values

-- unique= it ensures that all values in a column are unique

-- primary key= its a combination of not null and unique key

-- foreign key= its prevents action that would destroy link between tables

-- default= sets a defult value for column if value is specified

-- check= it ensures that calues in a solumn statisfies the specified condition


create database datamites;
show databases;
-- we need to define sql constraints to create table

use datamites;

create table student(
s_id int primary key ,
s_name varchar(30),
s_location varchar(30),
age int);

show tables;

show columns in student;

describe student;

select* from student;

-- to insert single entry in tables


insert into student values(1,"pranav","pune",21);
insert into student values(2,"shubham","mumbai",22);
select*from student;

-- to insert multiple entries at a time in tables

insert into student values(3,"bhavesh","pune",26),
(4,"sheya","wagholi",24),
(5,"barabar barar","wagholi",26),
(6,"sheya","wagholi",24),
(7,"khup strugle zala","kharadi",23),
(8,"bass ghii tak","kesanand",22);
insert into student values
(9,"masala tak,masala tak","starbucks",21);
select*from student;
describe student;

-- update entry from table
-- syntax = update table_name set student_name="name",age=age where student_id=id;

update student set s_name="sheya",age=8 where s_id=6;

select*from student;

-- multiple ways to display or access data for columns
select s_name,age from student;
select s_name as student_name,age as student_age from student;

-- multiple ways to display or access data for rows
select*from student where age=8;
select*from student where s_location="pune";
select*from student where s_name="masala tak,masala tak";

-- update entry from table
select*from student;
update student set s_name="idli sambar",age=55 where s_id=4;
select*from student;

-- delete entry from table
-- syntax= DELETE FROM table_name WHERE person_id=id;

delete from student where s_id=4;

select*from student;

-- alter table column (add column in table) and add percentage in percentage column
alter table student add s_percentage int;
select*from student;

update student set s_percentage =case
when s_id=1 then 100
when s_id=2 then 88
when s_id=3 then 35
else 70 end;




update student set s_percentage="90" where s_id=1;
update student set s_percentage="91" where s_id=2;
update student set s_percentage="92" where s_id=3;
update student set s_percentage="93" where s_id=5;
update student set s_percentage="94" where s_id=6;
update student set s_percentage="95" where s_id=7;
update student set s_percentage="96" where s_id=8;
update student set s_percentage="97" where s_id=9;

-- to drop column 
alter table student drop column s_percentage;
select*from student;

-- modify data type of a column
describe student;
alter table student modify s_name varchar(100);
describe student;

select*from student;

-- modify column heading (schema)
alter table student rename column age to s_age;
select*from student;




-- truncate (delete all records from table)
-- TRUNCATE table table_name 

-- 14/10/2024 monday
-- connect with datamites server and perform some operation 14/10/2024

















