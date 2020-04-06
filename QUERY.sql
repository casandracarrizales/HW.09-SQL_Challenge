--1. List the following details of each employee: 
--employee number, last name, first name, 
--gender, and salary.
 
SELECT Employees.emp_no, Employees.last_name, Employees.first_name, 
Employees.gender, Salaries.salary
FROM Employees
JOIN Salaries ON Employees.emp_no = Salaries.emp_no;

--2. List Employees who were hired in 1986.

SELECT emp_no, first_name, last_name 
FROM Employees
WHERE EXTRACT (YEAR FROM hire_date) = '1986';

--3. List the manager of each department with the following information: 
--department number, department name, the manager's employee number, 
--last name, first name, and 
--start and end employment dates.

SELECT Departments.dept_no, Departments.dept_name, Dept_Manager.emp_no,
Employees.last_name, Employees.first_name, 
Dept_Manager.from_date, Dept_Manager.to_date
FROM Departments
JOIN Dept_Manager ON Departments.dept_no = Dept_Manager.dept_no
JOIN Employees ON Dept_Manager.emp_no = Employees.emp_no;


--4. List the department of each employee with the following information: 
--employee number, 
--last name, first name, and 
--department name.

SELECT Dept_Manager.emp_no, 
Employees.last_name, Employees.first_name, 
Departments.dept_name
FROM Departments
JOIN Dept_Manager ON Departments.dept_no = Dept_Manager.dept_no
JOIN Employees ON Dept_Manager.emp_no = Employees.emp_no;

--5. List all Employees whose 
--first name is "Hercules" and last names begin with "B."

SELECT first_name, last_name 
FROM Employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

--6. List all Employees in the Sales department, including their 
--employee number, 
--last name, first name, and 
--department name.

SELECT Dept_Manager.emp_no, 
Employees.last_name, Employees.first_name, 
Departments.dept_name
FROM Departments
JOIN Dept_Manager ON Departments.dept_no = Dept_Manager.dept_no
JOIN Employees ON Dept_Manager.emp_no = Employees.emp_no
WHERE Departments.dept_name = 'Sales';

--7. List all Employees in the 
--Sales and Development Departments, including their employee number, 
--last name, first name, and 
--department name.

SELECT Dept_Manager.emp_no, 
Employees.last_name, Employees.first_name, 
Departments.dept_name
FROM Departments
JOIN Dept_Manager 
ON Departments.dept_no = Dept_Manager.dept_no
JOIN Employees 
ON Dept_Manager.emp_no = Employees.emp_no
WHERE Departments.dept_name = 'Sales' 
OR Departments.dept_name = 'Development';

--8. In descending order, 
--list the frequency count of employee last names, i.e., 
--how many Employees share each last name.

SELECT last_name, COUNT (last_name) AS "Frequency"
FROM Employees 
GROUP BY last_name 
ORDER BY "Frequency" DESC;
