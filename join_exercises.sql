use employees;

# write a query that shows each department along with the name of the current manager for that department.

# Start with departments table
# then JOIN with dept_manager table using dept_no as the common thread
# then JOIN with the employees table, using the *emp_no* as the common thread
# NOTE: ensure to_date is 9999-01-01 (meaning, current employee)

# Department name | manager First/last name

select departments.dept_name AS Department, CONCAT(emp.first_name, ' ', emp.last_name) AS Department_Manager
from departments
join dept_manager on dept_manager.dept_no = departments.dept_no
    -- ^^ this means that both dept_manager and departments have dept_no ^^
join employees as emp on emp.emp_no = dept_manager.emp_no
    -- ^^ this is creating the 'emp' variable and joining emp & dept_manager by using emp_no
where dept_manager.to_date = '9999-01-01';

# Find the name of all departments currently managed by women.

select departments.dept_name AS Department, CONCAT(emp.first_name, ' ', emp.last_name) AS Manager
from departments
join dept_manager on dept_manager.dept_no = departments.dept_no
join employees as emp on emp.emp_no = dept_manager.emp_no
where dept_manager.to_date = '9999-01-01'
and emp.gender = 'f';

# Find the current titles of employees currently working in the Customer Service department.

# JOIN departments table to dept_emp table
# Join titles to dept_employees table

select titles.title AS title, count(dept_emp.emp_no) as Count
from departments
join dept_emp ON dept_emp.dept_no = departments.dept_no
join titles on titles.emp_no = dept_emp.emp_no
where departments.dept_name = 'Customer Service'
    and titles.to_date = '9999-01-01'
    and dept_emp.to_date = '9999-01-01'
group by title;

# Find the current salary of all current managers.

select departments.dept_name AS Department, CONCAT(emp.first_name, ' ', emp.last_name) AS 'Name',
salaries.salary as 'Salary'
from departments
join dept_manager as dm on departments.dept_no = dm.dept_no
join employees as emp on emp.emp_no = dm.emp_no
join salaries on emp.emp_no = salaries.emp_no
where dm.to_date like '9999%'
  AND salaries.to_date like '9999%'
order by departments.dept_name;


