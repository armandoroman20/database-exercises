use employees;

-- Return 10 employees in a result set named 'full_name' in the format of 'last name, first name' for each employee.

select concat (last_name, ' ', first_name) as full_name
from employees
limit 10

-- Add the date of birth for each employee as 'DOB' to the query.
SELECT concat (last_name, ' ', first_name) as full_name, birth_date as 'DOB'
FROM employees
limit 10;

-- Update the query to format full name to include the employee number so it is formatted as 'employee number - last name, first name'.

SELECT concat (emp_no, ' - ', last_name, ' ', first_name) as full_name, birth_date as 'DOB'
FROM employees
limit 10;

