CREATE TABLE Department (
	dept_number varchar(30) NOT NULL,
	dept_name varchar (30) NOT NULL,
	primary key (dept_number)
	);

select *
from Department;

CREATE TABLE Employees (
	emp_no VARCHAR (30) NOT NULL,
	emp_title_id VARCHAR (30) NOT NULL,
	birth_date VARCHAR (30) NOT NULL,
	first_name VARCHAR (30) NOT NULL,
	Last_name VARCHAR (30) NOT NULL,
	Sex VARCHAR (30) NOT NULL,
	Hire_date VARCHAR (30) NOT NULL,
	PRIMARY KEY (emp_no)
	);
	

select *
from Employees;

CREATE TABLE Dept_manager (
	dept_number varchar (30) NOT NULL , 
	emp_no VARCHAR (30) NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES Employees(emp_no),
	FOREIGN KEY (dept_number) REFERENCES Department(dept_number)
	);

select *
from Dept_manager;

CREATE TABLE Dept_Emp (
	emp_no varchar (30) NOT NULL , 
	dept_name VARCHAR (30) NOT NULL,
	foreign key (emp_no) references Employees(emp_no) 
	);

Select *
from Dept_Emp;

CREATE TABLE Salaries (
	emp_no VARCHAR (30) NOT NULL,  
	salary VARCHAR (30) NOT NULL,
	foreign key (emp_no) references Employees (emp_no)
	);

select *
from Salaries;

CREATE TABLE titles (
	title_id VARCHAR (30) NOT NULL,  
	title VARCHAR (30) NOT NULL,
	primary key (title_id)
	);

select *
from titles;

DELETE FROM titles
WHERE title = 'title';

DELETE FROM Salaries
WHERE emp_no = 'emp_no';

DELETE FROM Dept_Emp
WHERE emp_no = 'emp_no';

DELETE FROM Employees
WHERE emp_no = 'emp_no';

DELETE FROM Dept_manager
WHERE dept_number = 'dept_no'
AND emp_no = 'emp_no';

DELETE FROM Department
WHERE dept_number = 'dept_no'
AND dept_name = 'dept_name';




