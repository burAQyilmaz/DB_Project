
alter table SCRUMTEAM add salary integer;

update SCRUMTEAM
set salary = 5000
where JOBTITLE in('tester','dev');

update SCRUMTEAM
set salary = 7000
where JOBTITLE='PO';

delete from SCRUMTEAM
where EMPID=3;

alter table SCRUMTEAM rename  column EMPID to emp_id;

truncate table SCRUMTEAM;--tabloyu boşaltma

drop table SCRUMTEAM; --tabloyu silme
