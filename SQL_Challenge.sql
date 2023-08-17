--Employee database schema
--drop table salaries;
--drop table dept_emp;
--drop table dept_manager;
--drop table employees;
--drop table titles;
--drop table departments;

CREATE TABLE departments (
    dept_no VARCHAR(10)   NOT NULL,
    dept_name VARCHAR(50)   NOT NULL,
    CONSTRAINT pk_departments PRIMARY KEY (
        dept_no
     )
);

CREATE TABLE titles (
    title_id VARCHAR(50)   NOT NULL,
    title VARCHAR(50)   NOT NULL,
    CONSTRAINT pk_titles PRIMARY KEY (
        title_id
     )
);

CREATE TABLE employees (
    emp_no VARCHAR(10)   NOT NULL,
    emp_title_id VARCHAR(50)   NOT NULL,
    birth_date VARCHAR(50) NOT NULL,
    first_name VARCHAR(50)   NOT NULL,
    last_name VARCHAR(50)   NOT NULL,
    sex VARCHAR(3)   NOT NULL,
    hire_date DATE   NOT NULL,
    CONSTRAINT pk_employees PRIMARY KEY (
        emp_no
     )
);

CREATE TABLE dept_manager (
    dept_no VARCHAR(10)   NOT NULL,
    emp_no VARCHAR(10)   NOT NULL,
    CONSTRAINT pk_dept_manager PRIMARY KEY (
        emp_no
     )
);

CREATE TABLE dept_emp (
    dept_no VARCHAR(10)   NOT NULL,
    emp_no VARCHAR(10)   NOT NULL,
    CONSTRAINT pk_dept_emp PRIMARY KEY (
        dept_no,emp_no
     )
);

CREATE TABLE salaries (
    emp_no VARCHAR(10)   NOT NULL,
    salary INT   NOT NULL,
    CONSTRAINT pk_salaries PRIMARY KEY (
        emp_no
     )
);


SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
FROM employees
INNER JOIN salaries ON employees.emp_no = salaries.emp_no
GROUP BY employees.emp_no, salaries.salary
LIMIT 50

SELECT first_name, last_name, hire_date
FROM employees
WHERE EXTRACT(YEAR FROM hire_date::date) = 1986;

SELECT e.first_name, e.last_name, dm.dept_manager, d.dept_name, e.emp_no
FROM employees as e
	INNER JOIN departments as d
	ON (e.emp_no = d.emp_no)
		INNER JOIN dept_manager as dm
		ON (d.dept_no = dm.dept_no)
		GROUP BY employees.emp_no;

SELECT e.first_name, e.last_name, de.dept_no, d.dept_name, e.emp_no
FROM employees as e
	INNER JOIN departments as d
	ON (e.emp_no = d.emp_no)
		INNER JOIN dept_emp as de
		ON (d.dept_no = de.dept_no)
		GROUP BY employees.emp_no
		LIMIT 50;

SELECT first_name, last_name, sex
FROM employees
WHERE first_name IN ('Hercules')
AND LEFT(last_name, 1) = 'B'
LIMIT 50;

SELECT employees.emp_no, employees.first_name, employees.last_name
FROM employees
WHERE employees.emp_no. IN
(
	SELECT dept_emp.emp_no
	FROM dept_emp
	WHERE dept_emp.dept_no IN
	(
		SELECT departments.dept_no
		FROM departments
		WHERE departments.dept_name = 'Sales'
	)
);

SELECT employees.emp_no, employees.first_name, employees.last_name
FROM employees
WHERE employees.emp_no IN
(
	SELECT dept_emp.emp_no
	FROM dept_emp
	WHERE dept_emp.dept_no IN
	(
		SELECT departments.dept_no.
		FROM departments
		WHERE departments.dept_name. = "sales" OR departments.dept_name = "development"
	)
);

SELECT count(last_name)
FROM employees
WHERE last_name = last_name DESC;