-- Use Dictinct with Orderby to remove duplicate rows
-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (ti.title) e.emp_no,
e.first_name,
e.last_name,
ti.title,
ti.from_date,
ti.to_date
--INTO retirement_titles
FROM title as ti
   INNER JOIN employees as e
   ON (ti.emp_no = e.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
     AND (e.hire_date BETWEEN '1985-01-01' AND '1988-12-31')
ORDER BY e.birth_date, _____ DESC;
