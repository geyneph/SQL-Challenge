--TIME FOR QUERING
--1. LIST THE EMPLOYEE NUMBRE, LAST NAME, SEX, AND SALARY OF EACH EMPLOYEE
select e.emp_no,e.last_name,e.sex,s.salary from employees as e 
join salaries  as s   
on e.emp_no = s.emp_no ; 

--2. List the manager of each departymernt alonmg with their department number , department name, employee number, last name first name 

SELECT M.dept_no as "Number of department", d.dept_name as "Department name", M.emp_no as "Employee number",e.last_name, e.first_name
from dept_manager as M
join departments as d
on M.dept_no = d.dept_no
join employees as e
on M.emp_no = e.emp_no ; 
--3. List the fist name , last name , hire date  for the employees whoe where hiered in 1986

SELECT first_name as "First name", last_name as "Last name", hire_date
FROM employees
WHERE employees.hire_date like '%1986';
--4. List the department number for each employee along with that employees employee number, last name, first name and department name

SELECT A.dept_no,A.emp_no,B.last_name,B.first_name,c.dept_name
FROM dept_emp as A
JOIN employees as B
on A.emp_no = B.emp_no
JOIN departments as C
ON A.dept_no = C.dept_no;

--5.List first name, last name and sex of each employee whose first name is HERCULES and whose last name begings with B
SELECT A.first_name, A.last_name, A.sex
from employees as A
WHERE A.first_name = 'Hercules' AND A.last_name like 'B%';

--6.lIST each employee in the sales department including their employee number , last name, first name
SELECT A.emp_no, A.last_name, A.first_name 
FROM employees as A
JOIN dept_emp as B
on A.emp_no = B.emp_no
JOIN departments as C
on B.dept_no = c.dept_no
WHERE c.dept_name = 'Sales';

--List each employee in the sales and Development departments, including their employee number , last name, firstname and department name 
SELECT A.emp_no, A.last_name,A.first_name,C.dept_name
FROM employees as A
JOIN dept_emp as B
ON A.emp_no = B.emp_no
JOIN departments as C
ON B.dept_no =c.dept_no
WHERE c.dept_name = 'Sales' or c.dept_name = 'Development';
--8.List the frequency counts in descending order, of all the employee last names
SELECT A.last_name as "Apellido", Count(A.last_name) AS "Frecuencia de Apellidos"
FROM employees as A
GROUP BY A.last_name
ORDER BY Count(A.last_name) DESC;