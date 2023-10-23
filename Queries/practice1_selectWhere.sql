
--get all table names employees
select *
from EMPLOYEES;

--get first names from employees table
select FIRST_NAME
from EMPLOYEES;

--get first names and last names from employees table
select FIRST_NAME, LAST_NAME
from EMPLOYEES;

--get first names and last names where salary is less than 5000
select FIRST_NAME, LAST_NAME
from EMPLOYEES
where SALARY<5000;

--get first names and JOB_ID where first name is John
select FIRST_NAME, JOB_ID
from EMPLOYEES
where FIRST_NAME='John';

--get firstnames and email where salary is between 5000 and 8000
select FIRST_NAME,EMAIL
from EMPLOYEES
where 5000<=SALARY and SALARY<=8000;

select FIRST_NAME,EMAIL
from EMPLOYEES
where SALARY between 5000 and 8000;

--get all infos where employee ID is 134, 168 or 194
select *
from EMPLOYEES
where EMPLOYEE_ID=135 or EMPLOYEE_ID=168 or EMPLOYEE_ID=194;

select *
from EMPLOYEES
where EMPLOYEE_ID in (135,168,194);






