DROP TABLE dept_manager;
DROP TABLE dept_emp;
DROP TABLE titles;
DROP TABLE salaries;
DROP TABLE Department;
DROP TABLE Employees;



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

--Data Analysis
--1)
select Employees.emp_no, Employees.last_name, Employees.first_name, Employees.sex,
Salaries.salary
from Employees, Salaries
Where Employees.emp_no = Salaries.emp_no;

--2) List employees who were hired in 1986
-- select emp_no, first_name, last_name, hire_date
SELECT Hire_date FROM Employees
where Hire_date between '1985/31/12' and 1987/1/1
-- where Hire_date between '01/01/1986' and '12/31/1986';
-- Where hire_date  >= ''
-- and hire_date < '01/01/1987';

--3)
SELECT Department.dept_number,
		Department.dept_name,
		Employees.emp_no,
		Employees.last_name,
		Employees.first_name
FROM	Dept_manager, Department, Employees
WHERE	Department.dept_number = Dept_manager.dept_number
AND		Employees.emp_no = Dept_manager.emp_no;
		


--4)
SELECT	Employees.emp_no, 
		Employees.last_name, 
		Employees.first_name,
		Department.dept_name
FROM	Employees, Dept_emp, Department
WHERE	Employees.emp_no = Dept_emp.emp_no
AND 	Department.dept_number = Dept_emp.dept_name;

--5)
SELECT * FROM Employees
WHERE first_name = 'Hercules'
AND last_name LIKE '%B%';

--6)
SELECT	Employees.emp_no, 
		Employees.last_name, 
		Employees.first_name, 
		Department.dept_name
FROM	Employees, Department, dept_emp
WHERE	dept_emp.emp_no = Employees.emp_no
AND		dept_emp.dept_name = Department.dept_number
AND		Department.dept_name = 'Sales';

--7)
SELECT	Employees.emp_no, 
		Employees.last_name, 
		Employees.first_name, 
		Department.dept_name
FROM	Employees, Department, dept_emp
WHERE	dept_emp.emp_no = Employees.emp_no
AND		dept_emp.dept_name = Department.dept_number
AND		(Department.dept_name = 'Sales' OR 
		 Department.dept_name = 'Development');


--8)
SELECT	last_name, 
		COUNT(last_name) 
FROM 	Employees
GROUP BY 	last_name
ORDER BY COUNT(last_name) DESC;
	
	


