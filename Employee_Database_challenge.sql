-- Use Dictinct with Orderby to remove duplicate rows
SELECT e.emp_no,
e.first_name,
e.last_name,
ti.title,
ti.from_date,
ti.to_date
INTO retirement_titles
FROM title as ti
   INNER JOIN employees as e
   ON (ti.emp_no = e.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no;

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (title) emp_no,
first_name,
last_name,
title
INTO unique_titles
FROM retirement_titles
ORDER BY title, emp_no, to_date DESC;

-- Use Dictinct with Orderby to remove duplicate rows
SELECT COUNT(title), title
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY title DESC;