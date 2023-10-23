--how to find employee's information who is making
-- highest salary in the company

select *
from EMPLOYEES
where SALARY=(select min(SALARY)
              from EMPLOYEES);

--show me the top 10 highest paid employees

select *
from (select *
      from EMPLOYEES
      order by SALARY desc)
where ROWNUM<11;

select *
from (select *
      from EMPLOYEES
      order by SALARY)
where ROWNUM<6;

--en düsük maas alan 2. kişi:
select *
from EMPLOYEES
where SALARY=(select min(SALARY)
from (select *
    from EMPLOYEES
    order by SALARY desc)
where ROWNUM<3);









