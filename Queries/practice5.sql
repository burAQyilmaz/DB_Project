select FIRST_NAME,LAST_NAME,EMAIL
from EMPLOYEES;

select *
from EMPLOYEES
where SALARY>10000;

select *
from EMPLOYEES
order by SALARY;

select FIRST_NAME
from EMPLOYEES
where FIRST_NAME like '_u%';

select count(*)
from EMPLOYEES
where SALARY<10000;

select round(avg(SALARY))
from EMPLOYEES
where SALARY>10000;

select JOB_ID,count(*)
from EMPLOYEES
group by JOB_ID ;

select JOB_ID,count(*)
from EMPLOYEES
group by JOB_ID having count(*)<5;

