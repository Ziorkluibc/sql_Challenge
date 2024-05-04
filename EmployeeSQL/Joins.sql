select employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
from public.employees
Join public.salaries on employees.emp_no = salaries.salary;
Foreign Key (emp_no) Referencing (salaries);

Select first_name, last_name, hire_date
From public.employees
where extract (year from hire_date) = 1986;



Select departments.dept_no, departments.dept_name, employees.emp_no, employees.last_name,employees.first_name
From public.dept_manager
join employees on dept_manager.emp_no = employees.emp_no
Join departments on dept_manager.dept_no = departments.dept_no,
Foreign Key (dept_no) referencing (departments),
Foreign Key (emp_no) referencing (employees);


Select departments.dept_no, employees.emp_no, employees.last_name,employees.first_name , departments.dept_name
From public.dept_emp
Join public.employees on dept_emp.emp_no = employees.emp_no
Join public.departments on departments.dept_no = departments.dept_no;



select employees.first_name, employees.last_name,employees.sex
from public.employees
where first_name = 'Hercules' and last_name Like 'B%';



select employees.emp_no, employees.last_name, employees.first_name
From public.employees
Join public.dept_emp on employees.emp_no = dept_emp.emp_no
Join public.departments on public.dept_emp.dept_no = public.departments.dept_no
where departments.dept_name = 'Sales';




select employees.emp_no, employees.last_name, employees.first_name
From public.employees
Join public.dept_emp on employees.emp_no = dept_emp.emp_no
Join public.departments on public.dept_emp.dept_no = public.departments.dept_no
where public.departments.dept_name IN('Sales', 'Development');



Select last_name, count(*) as frequency
From employees
Group by last_name
Order by frequency Desc;
