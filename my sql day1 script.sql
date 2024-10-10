-- comment*
/*thi is used for multiline comment*/

-- DDL
-- to create databse

create database Employee;
create database if not exists Employee;

show databases;

-- to drop database
drop database Employee;

show databases;

-- create employee database and see it on schemas section

create database employee;

-- use command for select that database from system to performoperations on it

use employee;

CREATE TABLE employee_details (
    emp_id VARCHAR(8),
    emp_name VARCHAR(20),
    emp_designation VARCHAR(20),
    emp_age INT
);

show tables;
-- to describe tables details

describe employee_details;
show columns from employee_details;











