-- Create a file named where_exercises.sql. Make sure to use the employees database.
use employees;

select *
from employees
where first_name in ('Irena', 'Vidya', 'Maya');

-- select *
-- from employees
-- where first_name in ('Irena', 'Vidya')
-- or first_name = 'Maya';


-- Find all employees whose last name starts with 'E' — 7,330 rows.
select * from employees where last_name like 'E%'
or last_name like '%E';

--Find all employees hired in the 90s — 135,214 rows.
select * from employees where hire_date between '1990-01-01' and '1999-12-31';

-- Find all employees born on Christmas — 842 rows.
-- select * from employees where birth_date = '1954-12-25';

-- Find all employees with a 'q' in their last name — 1,873 rows.
select * from employees where last_name like '%q%';

select * from employees where last_name = '%q%'
and last_name not 'qu';

