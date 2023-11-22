--CREATING THE TABLES SCHEMAS
--First we create those tables with primary keys
CREATE TABLE employees (
	emp_no INT PRIMARY KEY NOT NULL,
	title_id varchar(200) not null,
	birth_date varchar(200),
	first_name varchar(200),
	last_name varchar(200),
	sex varchar(200),
	hire_date varchar(200),
	FOREIGN KEY(title_id) REFERENCES title(title_id)
);
CREATE TABLE departments(
	dept_no varchar(200) PRIMARY KEY NOT NULL,
	dept_name VARCHAR(200)
);
CREATE TABLE title(
	title_id varchar(200) PRIMARY KEY NOT NULL,
	title VARCHAR(200)
);
-- Then we create those tables with foreigns keys
CREATE TABLE salaries(
	emp_no INT,
	salary INT,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);
CREATE TABLE dept_emp(
	emp_no INT,
	dept_no varchar(200),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY(dept_no) REFERENCES departments(dept_no)
);
CREATE TABLE dept_manager(
	dept_no varchar(200),
	emp_no INT,
	FOREIGN KEY(dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);
--SELECTING EVERYTHNG FROM TABLES JUST TO VIEW DATA
select * from employees;
select * from departments;
select * from dept_emp;
select * from dept_manager;
select * from title;
select * from salaries;

--TIME FOR QUERING
