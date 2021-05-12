create database employee;
use employee;
create table employee_details(
emp_id int not null,
emp_name varchar (20) not null,
email varchar (20),
phone int,
salary decimal (5,2),
nationality varchar (20) not null,
primary key (emp_id),
unique (phone)
);
explain employee_details;