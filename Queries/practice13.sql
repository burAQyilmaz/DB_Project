CREATE table Address2(

    address_id Integer primary key,
    address varchar(100) not null,
    phone varchar(10) not null
);

insert into Address2 values (5,'1913 Hanoi Way', '28303384');
insert into Address2 values (7,'692 Joliet Street', '44847719');
insert into Address2 values (8,'1566 Inegl Manor', '70581400');
insert into Address2 values (10,'1795 Santiago', '86045262');
insert into Address2 values (11,'900 Santiago', '16571220');

commit;

drop table Customers2;

CREATE table Customers2(

                         Customer_id Integer primary key,
                         FirstName varchar(50) not null,
                         LastName varchar(50) not null,
                         Address_Id Integer references Address2 (address_id)
);

insert into Customers2 values (1,'Mary', 'Smith',5);
insert into Customers2 values (2,'Patricia', 'Johnson',null);
insert into Customers2 values (3,'Linda', 'Williams',7);
insert into Customers2 values (4,'Barbara', 'Jones',8);
insert into Customers2 values (5,'Elizabeth', 'Brown',null);

commit;


SELECT *
from Customers2;

select *
from Address2;
