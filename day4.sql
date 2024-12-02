--create database uidemo;
/*create table department
(id smallint primary key,
name varchar(20) not null );

create table employee
(
id smallint primary key,
fname varchar(20) not null,
lname varchar(20) not null,
gender char(1) check (gender='F' or gender='M'),
did smallint   REFERENCES department("id")



);

insert into department (id ,name)
values (1,'os'),
(2,'ui'),
(3,'iot'),
(4,'java');

INSERT INTO public.employee(
	id, fname, lname, gender, did)
	VALUES (1,'mark','amgd','M',1),
	(2,'sara','ali','F',2),
	(3,'sara','ahmed','F',1),
	(4,'sara','amgd','F',NULL),
	(5,'ahmed','ali','M',NULL)
	;
	
	alter table employee
	add column supid smallint  not null REFERENCES  employee (id)

	update  employee
	set supid=5
	where id!=1 and id>=3;
	select * from employee;
F


alter table employee
add column salary real default =5000;
F
/*
alter table employee
add column salary real default 5000;

select id,fname || ' ' || lname as fullname 
,concat (fname,' ',lname) as fullname_concat--3
from employee --1
where supid is not  NULL --2;


select salary+5000
from employee;

select sum(salary+3000)
from employee;
*/
select employee.id,employee.fname || ' '||employee.lname as fullname
,employee.salary,department.name 
from employee,department
where employee.did=department.id;


select employee.id,employee.fname || ' ' ||employee.lname as fullname
,department.name
from employee,department
where employee.did=department.id
		*/
