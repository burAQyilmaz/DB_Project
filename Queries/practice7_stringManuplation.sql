--how can we rename the column that we displayed
select FIRST_NAME as Name, LAST_NAME as Surname
from EMPLOYEES;

select FIRST_NAME ||' '|| LAST_NAME as Fullname
from EMPLOYEES;
--|| for concat

select lower(EMAIL||'@gmail.com')
from EMPLOYEES;

select FIRST_NAME||' '||substr(LAST_NAME,0,1)
from EMPLOYEES;


--find the employee info who is making 19th highest salary

select *
from EMPLOYEES
where SALARY=(select min(Salary)
       from (select distinct SALARY
             from EMPLOYEES
             order by SALARY desc)
       where ROWNUM<20);










