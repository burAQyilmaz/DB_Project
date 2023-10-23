--get me all employees whose first name start with B
select *
from EMPLOYEES
where FIRST_NAME like 'B%';

--get me all employees whose first name starts with A with 4 characters
select *
from EMPLOYEES
where FIRST_NAME like 'A___';

--get me 5 letter first names where the middle char is z;
select FIRST_NAME
from EMPLOYEES
where FIRST_NAME like '__z__';

--get me first names where second letter is u;
select FIRST_NAME
from EMPLOYEES
where FIRST_NAME like '_u%';

--get me the count of all employees
select count(*)
from EMPLOYEES;

--get me the count of all employees whose first name start with 'C'
select count(*)
from EMPLOYEES
where FIRST_NAME like 'C%';

--how many employees making more than 10000
select count(*)
from EMPLOYEES
where SALARY>10000;

--get me all employees info order by alphabetical based on firstname
select *
from EMPLOYEES
order by FIRST_NAME asc;

--get me all employees information based on who is making more salary to low salary
select *
from EMPLOYEES
order by SALARY desc ;

--get all firstnames uniquely
select distinct FIRST_NAME
from EMPLOYEES;

--how many unique first names we have
select count(distinct FIRST_NAME)
from EMPLOYEES;

