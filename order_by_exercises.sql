use employees;

select *
from employees
where first_name in ('Irena', 'Vidya', 'Maya')
order by first_name;

select *
from employees
where first_name in ('Irena', 'Vidya', 'Maya')
order by first_name, last_name;


select *
from employees
where first_name in ('Irena', 'Vidya', 'Maya')
order by last_name, first_name desc;


-- Find all employees whose last name starts with 'E' — 7,330 rows.
select * from employees where last_name like 'E%'
or last_name like '%E'
order by emp_no desc;

--Find all employees hired in the 90s — 135,214 rows.
select * from employees where hire_date between '1990-01-01' and '1999-12-31';

-- Find all employees born on Christmas — 842 rows.
-- select * from employees where birth_date = '1954-12-25';

-- Find all employees with a 'q' in their last name — 1,873 rows.
select * from employees where last_name like '%q%';

-- Change the query for employees hired in the 90s
-- and born on Christmas such that the first result is the oldest employee who was hired last.
-- It should be Khun Bernini.