create database Big_data;
use Big_data;


create table Department(
	dep_id int primary key,
    dep_name varchar(20),
    dep_location varchar(15)
);

create table Employees(
	emp_id int primary key,
    emp_name varchar(15),
    job_name varchar(10),
    manager_id int,
    hire_date date,
    salary decimal(10,2),
    commission decimal(7,2),
    dep_id int,
    foreign key (dep_id) references Department(dep_id)
);

drop table Employees;

insert into Department values (1,'Logistics','Hassan');
insert into Department values (2,'Analytics','Bengaluru');

insert into Employees values (01,'Nach','Analyst',02,'2012-01-01',100000,20000,2);
insert into Employees values (02,'Aniketh','Logistics',02,'2010-01-01',200000,50000,1);
insert into Employees values (03,'Vaanar','Logistics',02,'1991-03-23',30000,1000,1);

select emp_name,salary from employees;

select * from employees where hire_date='1991-03-23';

select avg(salary) from employees where job_name='Analyst';

select * from employees where salary between 100000 and 300000;

select * from employees where job_name in ('Analyst','Logistics');
