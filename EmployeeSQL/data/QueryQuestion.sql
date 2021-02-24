-- 1 List the following details of each employee: employee number, last name, first name, sex, and salary
SELECT E.Emp_No, E.Last_Name, E.First_Name, E.sex, S.salary
FROM employees AS E
	LEFT JOIN salaries AS S ON S.emp_no = E.emp_no
ORDER BY E.last_name ASC, E.first_name ASC;


-- 2 List first name, last name, and hire date for employees who were hired in 1986
SELECT last_name, first_name, hiring_date
FROM employees
WHERE hiring_date LIKE '1986%'

-- 3 List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
SELECT D.dept_no, D.dept_name, 
		E.emp_no, E.last_name, E.first_name
FROM employees AS E
	INNER JOIN dept_emp AS DE ON DE.emp_no = E.emp_no
	INNER JOIN department AS D ON D.dept_no = DE.dept_no
	INNER JOIN dept_manager AS DM ON DM.emp_no = E.emp_no

-- 4 List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT E.emp_no, E.last_name, E.first_name,
		D.dept_name 	
FROM employees AS E
	INNER JOIN dept_emp AS DE ON DE.emp_no = E.emp_no
	INNER JOIN department AS D ON D.dept_no = DE.dept_no
	

-- 5 List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
SELECT first_name, last_name
FROM employees
WHERE first_name = 'Hercules'
	AND last_name LIKE 'B%'

-- 6 List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT E.emp_no, E.last_name, E.first_name, 
		D.dept_name
FROM employees AS E
	INNER JOIN dept_emp AS DE ON DE.emp_no = E.emp_no
	INNER JOIN department AS D ON D.dept_no = DE.dept_no
WHERE D.dept_no = 'd007'

-- 7 List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT E.emp_no, E.last_name, E.first_name, 
		D.dept_name
FROM employees AS E
	INNER JOIN dept_emp AS DE ON DE.emp_no = E.emp_no
	INNER JOIN department AS D ON D.dept_no = DE.dept_no
WHERE D.dept_no IN ('d007', 'd005')

--8 In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT last_name, COUNT(first_name) AS emp_count
FROM employees
GROUP BY last_name
ORDER BY last_name DESC;

-- Epilogue 
--Evidence in hand, you march into your boss's office and present the visualization. 
--With a sly grin, your boss thanks you for your work. On your way out of the office, you hear the words, "Search your ID number." 
--You look down at your badge to see that your employee ID number is 499942.

SELECT last_name, first_name, hiring_date
FROM employees
WHERE emp_no = '499942'
