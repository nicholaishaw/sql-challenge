--Queries for data analysis

--Retrieving the employee number, last name, first name, gender, and salary of each employee
SELECT e.emp_no as "Employee Number", e.last_name as "Last Name", e.first_name as "First Name", e.sex as "Gender", s.salary as "Salary"
FROM employees as e
	INNER JOIN salaries as s
	ON (e.emp_no = s.emp_no)
GROUP BY e.emp_no, s.salary
ORDER BY e.last_name ASC, e.first_name ASC;


--Retrieving the earliest 200 employees hired in 1986 including first names, last names, and hire dates
SELECT first_name as "First Name", last_name as "Last Name", hire_date as "Hire Date"
FROM employees
WHERE EXTRACT(YEAR FROM hire_date::date) = 1986
ORDER BY hire_date ASC
LIMIT 200;


--Retrieving the manager of each department with their first name, last name, employee number, department name, and department number
SELECT e.first_name as "First Name", e.last_name as "Last Name", e.emp_no as "Employee Number", d.dept_name as "Department Name", dm.dept_no as "Department Number"
FROM employees as e
	INNER JOIN dept_manager as dm
	ON (e.emp_no = dm.emp_no)
		INNER JOIN departments as d
		ON (dm.dept_no = d.dept_no)
GROUP BY e.emp_no, dm.emp_no, d.dept_name
ORDER BY d.dept_name ASC, e.last_name ASC, e.first_name ASC;


--Retrieving the department numbers for each employee along with that employee’s employee number, first name, last name, and department name
SELECT de.dept_no as "Department Number", e.emp_no as "Employee Number", e.first_name as "First Name", e.last_name as "Last Name", d.dept_name as "Department Name"
FROM employees as e
	INNER JOIN dept_emp as de
	ON (e.emp_no = de.emp_no)
		INNER JOIN departments as d
		ON (d.dept_no = de.dept_no)
		GROUP BY e.emp_no, de.dept_no, d.dept_name;


--Retrieving first name, last name, and gender of each employee whose first name is Hercules and whose last name begins with the letter B
SELECT first_name, last_name, sex
FROM employees
WHERE first_name IN ('Hercules')
AND LEFT(last_name, 1) = 'B';


--Retrieving each employee in the Sales department, including their employee number, last name, and first name
SELECT e.emp_no as "Employee Number", e.first_name as "First Name", e.last_name as "Last Name"
FROM employees as e
WHERE e.emp_no IN
(
	SELECT de.emp_no
	FROM dept_emp as de
	WHERE de.dept_no IN
	(
		SELECT d.dept_no
		FROM departments as d
		WHERE d.dept_name = 'Sales'
	)
)
ORDER BY e.last_name ASC, e.first_name ASC;


--Retrieving each employee in the Sales and the Development departments—including their first name, last name, employee number, and department name
SELECT e.first_name as "First Name", e.last_name as "Last Name", e.emp_no as "Employee Number", d.dept_name as "Department Name"
FROM employees AS e
	INNER JOIN dept_emp AS de 
	ON e.emp_no = de.emp_no
		INNER JOIN departments AS d 
		ON de.dept_no = d.dept_no
		WHERE d.dept_name IN ('Sales', 'Development');


--Retrieving the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name)
SELECT e.last_name as "Last Name", count(*) as "Frequency"
FROM employees as e
GROUP BY e.last_name
ORDER BY count(*) DESC;
