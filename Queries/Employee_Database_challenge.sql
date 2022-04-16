select * from titles;
select * from employees;
-- Deliverable 1: 
-- Retrieve emp_no, first_name, and last_name from Employees table 
-- Retrieve title, from_date_ and to_date from titles table
-- Create a new table with the data called retirement_titles
-- Filter by birth_date between 152 and 1955
-- Order by emp_no ascending
select e.emp_no, e.first_name, e.last_name, t.title, t.from_date, t.to_date
INTO retirement_titles
from employees as e
Inner Join titles as t on (e.emp_no = t.emp_no)
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
Order by emp_no asc;

select * from retirement_titles;
-- Retrieve the first occurrence of the employee number for each set of rows
-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) emp_no,
first_name,
last_name,
title
INTO unique_titles
FROM retirement_titles
WHERE to_date = '9999-01-01'
ORDER BY emp_no asc, to_date DESC;
select * from unique_titles;

-- Count the number of employees by their most recent job title who are about to retire
drop table retiring_titles;
SELECT count(emp_no),
	title
INTO retiring_titles
FROM unique_titles
Group by title
order by count desc;

select * from retiring_titles;

-- Deliverable 2: Create a Mentorship Eligibility table that holds employees who are eligible to participate in a mentorship program
Drop Table mentorship_eligibility;
Select distinct on (e.emp_no) e.emp_no, 
	e.first_name, 
	e.last_name, 
	e.birth_date, 
	de.from_date, 
	de.to_date, 
	t.title
into mentorship_eligibility
from employees as e
Inner join dept_emp as de on (e.emp_no = de.emp_no)
Inner join titles as t on (e.emp_no = t.emp_no)
where (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31') 
and de.to_date = '9999-01-01'
order by e.emp_no;

Select * from mentorship_eligibility;


