--- create database

create database employee;
use employee;

--- create first table (employee_details)

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

alter table employee_details
modify salary decimal (7,2) not null;

explain employee_details;

---- populate table with data

insert into employee_details (emp_id, emp_name, email, phone, salary, nationality)
values ('001', 'Alfred', 'ajohn@googlemail', '075648933', '500.50', 'British'),
('002', 'Boris', 'bjohnson@googlemail', '076648933', '500.85', 'British'),
('003', 'Van-der Waak', 'vwaak@googlemail', '078658933', '480.99', 'Dutch'),
('004', 'David', 'dbechkam@googlemail', '086648953', '350.90', 'American'),
('005', 'Parminder', 'pkaur@googlemail', '036878933', '600.00', 'Indian');

explain employee_details;
select * from employee_details;

update employee_details
set salary = '6000.50'
where emp_id = 001;
select * from employee_details;

update employee_details
set nationality = 'Turkish'
where emp_id = '001';
select * from employee_details;

--- add additional data to table employee_details

insert into employee_details (emp_id, emp_name, email, phone, salary, nationality)
values ('006', 'Hannah', 'hford@googlemail', '087648999', '5000.00', 'Algerian'),
('007', 'Alvin', 'aprince@googlemail', '076789533', '2500.85', 'Afgan'),
('008', 'Viva', 'vdoreen@googlemail', '0539045675', '4830.99', 'Italian'),
('009', 'Maureen', 'mthomas@googlemail', '0112233445', '4350.90', 'British'),
('010', 'David', 'dharry@googlemail', '0226688761', '6000.00', 'Belgian');
select * from employee_details;

--- deletes a record from table 

delete from employee_details
where emp_id = 007;
select * from employee_details;

--- runs a simple query (one field/column)
select emp_name from employee_details where nationality = 'British';


--- runs a complex query (more than one field/column)
select emp_name, email, phone from employee_details where salary >= 1000;


--- retrieves all data sorted in ascending order (name)
select * from employee_details order by emp_name;



-- create second table (penfund)

create table penfund_details(
emp_id int not null,
emp_name varchar (20) not null,
age int not null,
employment_date int not null,
contribution int not null,
primary key (emp_id)
);

alter table penfund_details
modify employment_date varchar(20);

explain penfund_details;
select * from penfund_details; 


--- populate second table with data

insert into penfund_details (emp_id, emp_name, age, employment_date, contribution)
values ('001', 'Alfred', '55', 'Nov_1991', '30000'),
('002', 'Boris', '46','Jan_2000', '21000'),
('003', 'Van-der Waak', '48', 'Feb_2001', '26000'),
('004', 'David', '46', 'Dec_1998', '30000'),
('005', 'Parminder', '38', 'Jun_2004', '29000');

select * from penfund_details;

---- joining tables
  
SELECT employee_details.emp_name, penfund_details.contribution
FROM employee_details
INNER JOIN penfund_details
ON employee_details.emp_id = penfund_details.emp_id;


-- show both table structures and data

select employee_details.*, penfund_details. *
from employee_details
left join penfund_details
on (employee_details.emp_id = penfund_details.emp_id);

--- searching one table
select * from penfund_details 
where contribution > 26000;

--- demonstrates relationship between tables
select * from employee_details, penfund_details
where employee_details.emp_id = penfund_details.emp_id;

--- filter data using comparison operator
select * from employee_details, penfund_details
where employee_details.emp_id = penfund_details.emp_id AND salary > '500' AND contribution = '30000'













