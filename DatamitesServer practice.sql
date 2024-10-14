show databases;
use datamites_sql;
show tables;
select*from emp;

-- count is a function to use show how many row are in their( in table)
select count(*) from emp;

-- how to get specifies columns from table using quries

select ename,sal from emp;

-- how to get specifies row (entry) from table using quries

select*from emp where sal=1600;

-- to temporary change column name
select ename as employee_name,sal as employee_salary from emp;

select*from emp;

-- (distinct function)to show unique data from table column
select distinct(job) from emp;

select distinct(deptno) from emp;

select*from emp;

-- to show salesman joy employees
select*from emp where job="salesman";

select*from emp where deptno="20";

select*from emp where sal>"1500";

-- to get total count of resuls
select count(*)from emp where sal>1500;

-- name of emp getting sal >1500 dep no 10
select ename,sal from emp where sal>1500 and deptno="10";

-- emp details who are either manager or clerk

select*from emp where job='clerk' or 'manager';

-- show data except of dept no 10 (do not show dept 10)
select*from emp where not deptno=10;

select*from emp;

-- order by function (ascending,descending)
select*from emp order by sal;
select*from emp order by sal desc;

-- to get highest salary entries
select*from emp order by sal limit 3; 
select*from emp order by sal desc limit 3;

-- is null /not null function
select*from emp;
select*from emp where comm is null;
select count(*) from emp where comm is null;

select*from emp where comm is not null;
select count(*) from emp where comm is not null;


-- aggregation functions
select sal from emp;
select max(sal) from emp;
select min(sal) from emp;
select sum(sal) from emp;
select avg(sal) from emp;
select count(sal) from emp;

--  IN / not in function (operator)
-- without using in operaor
select*from emp where job="clerk"or"manager"or"analyst";
-- using in operator
select*from emp where job in ("clerk","manager","analyst");
-- use of not in operator
select*from emp where job not in ("clerk","manager","analyst");

-- between operator (range)
select*From emp;

-- print sal range between 1100 to 2500
-- without using between operator
select*from emp where sal>=1100 and sal<=2500;
-- using between operator
select*from emp where sal between 1100 and 2500;


-- homework
using todays all func that we have learned
cust,orders,prod explore insights












