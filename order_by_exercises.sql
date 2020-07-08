use employees;

select *
from employees
where first_name in ('Irena', 'Vidya', 'Maya')
and gender = 'm'
order by first_name;

-- # Update the query to order by first name and then last name.
-- The first result should now be Irena Acton
-- and the last should be Vidya Zweizig.

select *
from employees
where first_name in ('Irena', 'Vidya', 'Maya')
and gender = 'm'
order by first_name, last_name;


-- # Change the order by clause so that you order by last name
-- before first name. Your first result
-- should still be Irena Acton but now the last result should be Maya Zyda.

SELECT * FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
AND gender = 'M'
ORDER BY last_name, first_name;


-- # Update your queries for employees with 'E' in their last name
-- to sort the results by their employee number.
-- Your results should not change!

SELECT * FROM employees
WHERE last_name LIKE 'E%'
OR last_name LIKE '%E'
ORDER BY emp_no;

SELECT * FROM employees
WHERE last_name LIKE 'E%'
AND last_name LIKE '%E'
ORDER BY emp_no;


-- # Change the query for employees hired in the 90s
-- and born on Christmas such that the first result is
-- the oldest employee who was hired last. It should be Khun Bernini.

SELECT * FROM employees WHERE hire_date > '199%'
AND birth_date LIKE '%12-25'
ORDER BY birth_date, hire_date DESC;



SELECT * FROM employees WHERE hire_date > '199%';

SELECT * FROM employees WHERE hire_date LIKE '%12-25';

SELECT * FROM employees WHERE last_name LIKE '%q%';

SELECT * FROM employees WHERE last_name NOT LIKE '%qu%'
AND last_name LIKE '%q%';

-- Create a new file called order_by_exercises.sql and copy in the contents of your where_exercises.sql.
-- Modify your first query to order by first name. The first result should be Irena Reutenauer and the last result should be Vidya Simmen.
-- Update the query to order by first name and then last name. The first result should now be Irena Acton and the last should be Vidya Zweizig.
-- Change the order by clause so that you order by last name before first name. Your first result should still be Irena Acton but now the last result should be Maya Zyda.
-- Update your queries for employees with 'E' in their last name to sort the results by their employee number. Your results should not change!
-- Now reverse the sort order for both queries.
-- Change the query for employees hired in the 90s and born on Christmas such that the first result is the oldest employee who was hired last. It should be Khun Bernini.
