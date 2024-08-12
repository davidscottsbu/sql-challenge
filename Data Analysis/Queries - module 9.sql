SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, Salaries.salary
FROM employees
JOIN Salaries ON employees.emp_no = Salaries.emp_no;

SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31';

SELECT d.dept_no, d.dept_name, e.emp_no, e.last_name, e.first_name
FROM departments d
 JOIN "dept_manager" as dm
    ON d.dept_no = dm.dept_no
  JOIN "employees" as e
	ON dm.emp_no = e.emp_no;

SELECT e.emp_no last_name, first_name, d.dept_no, d.dept_name
FROM employees e
JOIN departments d ON dept_no = d.dept_no;

SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

SELECT e.emp_no,
		e.last_name,
		e.first_name,
		d.dept_name
   FROM "employees" as e
   JOIN "dept_emp" as de
     ON e.emp_no = de.emp_no
   JOIN "departments" as d
	 ON de.dept_no = d.dept_no
  WHERE d.dept_name = 'Sales';

SELECT e.emp_no, e.last_name, e.first_name
FROM employees e
JOIN departments d ON d.dept_no = d.dept_no
WHERE d.dept_name = 'Sales' OR d.dept_name = 'Development';

SELECT last_name, COUNT(last_name) AS frequency
FROM employees
GROUP BY last_name
ORDER BY frequency DESC;
