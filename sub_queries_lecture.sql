# sub-query lecture

--
-- SELECT column_a , column_b, column_c
-- FROM table_a
-- WHERE column_a IN (
--     SELECT column_a
--     FROM table_b
--     WHERE column_b = true
-- );

-- employees table example
--

use employees;

select dept_no
from departments
where dept_name = 'customer service';

select * from departments
where dept_no = (
    select dept_no
    from departments
    where dept_name = 'customer service'
    );


select emp_no
from dept_manager
where dept_no IN (
    select dept_no
    from departments
    where dept_name = 'sales'
)
and to_date > now();

# concatenate the first two employee's highest salaries
select concat (
    (
        select max(salary)
        from salaries
        where emp_no = 10001
    ),
    ' ',
    (
        select max(salary)
        from salaries
        where emp_no = 10002
    )
) as Salaries;

# find the first /last name of all dept managers

select emp.first_name, emp.last_name
from employees as emp
join dept_manager as dm on dm.emp_no = emp.emp_no;


select first_name, last_name
from employees
where emp_no in (
    select emp_no
    from dept_manager
    );

# ^^ these both do the same function ^^

# get the names of the employees with the ten highest salaries
-- first, find the list of the employees with the highest current salaries
-- Emp. no | salary

select emp_no, salary
from salaries
where to_date > now()
order by salary desc;


select first_name, last_name
from employees
where emp_no in (
    select emp_no
    from salaries
    where to_date > now()
    order by salary desc
    )
limit 10;

select employees.first_name, employees.last_name, salaries.salary
from salaries
join employees on employees.emp_no = salaries.emp_no
where employees.emp_no in (
select emp_no
from salaries
where to_date > now()
order by salary desc
    )
order by salaries.salary desc
limit 10;

select concat(
    (
        select concat(first_name, ' ', last_name)
        from employees
        where emp_no = 10001
        ),
    'works in a department called ',
    (
        select dept_name
        from departments
        where dept_no = 'd005'
        ),
    '.'
           );

# name and hire_date of earliest department employee
select first_name, hire_date
from employees
where emp_no in (
    select emp_no
    from dept_emp
    where from_date = (select min(from_date) from dept_emp)
);