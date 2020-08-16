DROP TABLE Department

CREATE TABLE Department (
	dept_number varchar(30) NOT NULL,
	dept_name varchar (30) NOT NULL
	);
CREATE TABLE Dept_Emp (
	emp_no varchar (30) NOT NULL , 
	dept_name VARCHAR (30) NOT NULL
	);
CREATE TABLE Dept_manager (
	dept_number varchar (30) NOT NULL , 
	emp_no VARCHAR (30) NOT NULL
	);
DROP TABLE Employees
CREATE TABLE Employees (
	emp_no VARCHAR (30) NOT NULL,
	emp_title_id VARCHAR (30) NOT NULL,
	birth_date VARCHAR (30) NOT NULL,
	first_name VARCHAR (30) NOT NULL,
	Last_name VARCHAR (30) NOT NULL,
	Sex VARCHAR (30) NOT NULL,
	Hire_date VARCHAR (30)
	);

CREATE TABLE Salaries (
	emp_no VARCHAR (30) NOT NULL,  
	salary VARCHAR (30) NOT NULL
	);
CREATE TABLE titles (
	title_id VARCHAR (30) NOT NULL,  
	title VARCHAR (30) NOT NULL
	);
select *
from Salaries
	


