-- Deliverable 1: The Number of Retiring Employees by Title

-- joining employees and titles table
SELECT employees.emp_no, employees.first_name, employees.last_name,
		titles.title, titles.from_date, titles.to_date
INTO retirement_titles
FROM employees
INNER JOIN titles
ON employees.emp_no = titles.emp_no
WHERE (employees.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY emp_no;


-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) emp_no,
first_name,
last_name,
title
INTO nameyourtable
FROM retirement_titles
WHERE to_date = '9999-01-01'
ORDER BY emp_no ASC, to_date DESC;

-- title count
SELECT DISTINCT ON (title) title
FROM unique_titles;

-- retiring table
SELECT COUNT(emp_no), title
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY COUNT(emp_no) DESC;


-- Deliverable 2: Mentorship Eligibility table that holds the employees
SELECT DISTINCT ON (emp_no) e.emp_no, e.first_name, e.last_name, e.birth_date,
				de.from_date, de.to_date,
				tl.title
INTO mentorship_eligibilty
FROM employees as e
	INNER JOIN dept_emp as de 
	on e.emp_no = de.emp_no
	INNER JOIN titles as tl
	on e.emp_no = tl.emp_no
WHERE de.to_date = '9999-01-01'
AND (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY emp_no;


-- two more queies to provide more insight into the upcoming "silver tsunami."
-- mentorship per title
SELECT COUNT(title), title
FROM mentorship_eligibilty
GROUP BY title
ORDER BY COUNT(title) DESC;

-- the eligible and experienced mentors which hve been employed in 1985
SELECT DISTINCT ON (emp_no) e.emp_no, e.first_name, e.last_name, e.birth_date,
				de.to_date,
				tl.title, tl.from_date
FROM employees as e
	INNER JOIN dept_emp as de 
	on e.emp_no = de.emp_no
	INNER JOIN titles as tl
	on e.emp_no = tl.emp_no
WHERE de.to_date = '9999-01-01'
AND (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
AND (tl.from_date BETWEEN '1985-01-01' AND '1985-12-31')
ORDER BY emp_no;

