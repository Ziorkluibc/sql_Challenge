Create table departments(
	dept_no Varchar(30) Not Null Primary Key,
	dept_name Varchar(30) Not Null);
	



Create table dept_employees(
	dept_no Varchar(30) Not Null ,
	emp_no Varchar(30) Primary Key);




Create table dept_manager(
	dept_no Varchar(30) Not Null,
	emp_no INT Primary Key);




	   
Create table employees(
	emp_no INT,
	emp_title_id Varchar(30) Not Null,
	birth_date Date,
	first_name varchar(30) Not Null,
	Last_name varchar(30) Not Null,
	sex varchar(30) Not Null,
	hire_date Date);
	


Create table salaries(
id serial primary Key,
	emp_no INT Not Null,
	salary INT Not Null);




Create table titles(
id serial primary Key,
	title_id Varchar(30) Not Null,
	title Varchar(30) Not Null);
	



