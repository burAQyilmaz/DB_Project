create table ScrumTeam(
                          EmpId INTEGER Primary Key ,
                          FirstName varchar(30) not null,
                          LastName varchar(30) not null ,
                          JobTitle varchar(50)

);


insert into SCRUMTEAM(empid, firstname, lastname, jobtitle) values (1,'burak','yilmaz','tester');
insert into SCRUMTEAM values (2,'yunus','kulcu','dev');
insert into SCRUMTEAM values (3,'caglar','engin','PO');

select *
from SCRUMTEAM;




