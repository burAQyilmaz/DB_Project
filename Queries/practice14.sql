
--1. Show all job_id and average salary who work as any of these jobs
-- IT_PROG, SA_REP, FI_ACCOUNT, AD_VP

select JOB_ID, avg(SALARY)
from (select * from EMPLOYEES where JOB_ID in ('IT_PROG', 'SA_REP', 'FI_ACCOUNT', 'AD_VP'))
group by JOB_ID;

--2. Show all records whose last name contains 2 lowercase 'a's

select *
from EMPLOYEES
where LAST_NAME like '%a%a%';

select *
from EMPLOYEES
where length(replace(LAST_NAME,'a',''))=length(LAST_NAME)-2;

--3. Display max salary for each department

select DEPARTMENT_ID,max(SALARY)
from EMPLOYEES
group by DEPARTMENT_ID;

--4. Display total salary for each department except department_id 50, and where total salary >30000

select DEPARTMENT_ID,sum(SALARY)
from EMPLOYEES
group by DEPARTMENT_ID
having sum(SALARY)>30000 and DEPARTMENT_ID<>50;

--5. Write a SQL query that returns first and last name any employees
-- who started job between 1-JAN-2000 and 3-SEP-2007 from the hr database

select FIRST_NAME,LAST_NAME,HIRE_DATE
from EMPLOYEES
where HIRE_DATE between '1-1-2000' and '3-9-2007';

--6. Display country_id, country name, region id, region name from hr database

select COUNTRY_ID,COUNTRY_NAME,REGION_ID,REGION_NAME
from COUNTRIES c join REGIONS r on c.REGION_ID = r.REGION_ID;

--7. Display All cities, country names from hr database

select CITY,COUNTRY_NAME
from COUNTRIES c join LOCATIONS l on c.COUNTRY_ID = l.COUNTRY_ID;

--8. display the first name, last name, department number, and department name,  for all employees for departments 80 or 40.

select FIRST_NAME,LAST_NAME,e.DEPARTMENT_ID,d.DEPARTMENT_NAME
from EMPLOYEES e join DEPARTMENTS D on D.DEPARTMENT_ID = e.DEPARTMENT_ID
where D.DEPARTMENT_ID in (80,40);

--9. Display employees' first name, Lastname department id and all departments including those where do not have any employee.

select FIRST_NAME,LAST_NAME,e.DEPARTMENT_ID
from EMPLOYEES e right join DEPARTMENTS d on e.DEPARTMENT_ID = d.DEPARTMENT_ID;

--10. Display the first name, last name, department number, and name, for all employees who have or have not any department

select FIRST_NAME,LAST_NAME,e.DEPARTMENT_ID
from EMPLOYEES e left join DEPARTMENTS d on e.DEPARTMENT_ID = d.DEPARTMENT_ID;

--11. Display all employee and their manager's names

select e1.FIRST_NAME,e1.LAST_NAME,e2.LAST_NAME as Menager
from EMPLOYEES e1 join EMPLOYEES e2 on e1.MANAGER_ID=e2.EMPLOYEE_ID;
