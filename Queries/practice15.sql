--1. find the 3rd maximum salary from the employees table (do not include duplicates)

select min(SALARY)
from (select distinct SALARY from EMPLOYEES order by SALARY desc)
where rownum<4;

--2. find the 5th maximum salary from the employees table (do not include duplicates)

select min(SALARY)
from (select distinct SALARY from EMPLOYEES order by SALARY desc)
where rownum<6;

--3. find the 7th maximum salary from the employees table (do not include duplicates)

select min(SALARY)
from (select distinct SALARY from EMPLOYEES order by SALARY desc)
where rownum<8;

--4. find the 10th maximum salary from the employees table (do not include duplicates)

select min(SALARY)
from (select distinct SALARY from EMPLOYEES order by SALARY desc)
where rownum<11;

--5. find the 3rd minimum salary from the employees table (do not include duplicates)

select max(SALARY)
from (select distinct SALARY from EMPLOYEES order by SALARY)
where rownum<4;

--6. find the 5th minimum salary from the employees table (do not include duplicates)

select max(SALARY)
from (select distinct SALARY from EMPLOYEES order by SALARY)
where rownum<6;

--7. find the 7th minimum salary from the employees table (do not include duplicates)

select max(SALARY)
from (select distinct SALARY from EMPLOYEES order by SALARY)
where rownum<8;

--8. find the 10th minimum salary from the employees table (do not include duplicates)

select max(SALARY)
from (select distinct SALARY from EMPLOYEES order by SALARY)
where rownum<11;