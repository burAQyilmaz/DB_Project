--get me average salary for IT_PROG
select avg(SALARY)
from EMPLOYEES
where JOB_ID ='IT_PROG';

--get me average salary and count,sum of salary each Job id
select JOB_ID,avg(SALARY),count(*),sum(SALARY)
from EMPLOYEES
group by JOB_ID;

--get me job_ids where their avg salary is more than 10k
select JOB_ID,avg(SALARY)
from EMPLOYEES
group by JOB_ID
having avg(SALARY)>10000;

