
create database details1;
use details1;

create table department(deptid varchar(10) ,
deptname varchar(30));

insert into department values("D1","HR"),
("D2","IT"),
("D3","Finance"),
("D4","Sales"),
("D5","Admin");

create table employee(empid varchar(10) ,
empname varchar(30),
salary int,
deptid varchar (30));

insert into employee values("E1","Diya",50000,"D2"),
("E2","Siya",60000,"D1"),
("E3","Riya",30000,"D3"),
("E4","Niya",10000,"D4"),
("E5","Jiya",20000,"D7"),
("E6","Piya",30000,"D8");

select*from department;
select*from employee;

-- inner join (id must available in both columns)

select*
from employee inner join department 
on employee.deptid= department.deptid;

select empname,deptname,employee.deptid
from employee inner join department
on employee.deptid =department.deptid;

select empname,deptname,employee.deptid
from employee inner join department
on employee.deptid=department.deptid;

select employee.empname,department.deptname,employee.deptid
from employee inner join department
on employee.deptid=department.deptid;

select e.name,d.deptname,e.deptid
from employee as e inner join department as d
on e.deptid=d.deptid;

select *
from employee as e inner join department as d
on e.deptid=d.deptid;

-- left join

select*from employee
left join  department
on employee.deptid = department.deptid;

--  right join 
select*from employee
left join  department
on employee.deptid = department.deptid;

-- FULL JOIN (left join union right join)
select*from employee
left join  department
on employee.deptid = department.deptid
union
select*from employee
left join  department
on employee.deptid = department.deptid;


-- cross join (combinations)

select*from employee cross join department;

-- self join 
select employee.deptid,empname from employee,department where department.deptid='D1';

-- 


















