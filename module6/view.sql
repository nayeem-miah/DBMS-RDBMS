-- Active: 1760089614932@@127.0.0.1@5432@ph@public
SELECT * from employees;

CREATE VIEW  dept_avg_salary as 
    SELECT department_name , avg(salary) from employees GROUP BY department_name;

-- SELECT department_name, avg(salary) from employees group BY department_name;

SELECT * from dept_avg_salary;
