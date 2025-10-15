-- Active: 1760089614932@@127.0.0.1@5432@ph@public

select count(*) from employees;

CREATE Function emp_count()
    RETURNS INT
    LANGUAGE SQL
    AS 
    $$
    SELECT count(*) from employees
    $$; 

SELECT emp_count();
CREATE or REPLACE Function emp_delete ()
    RETURNS void
    language SQL
    as 
    $$
    DELETE from employees where employee_id=30;
    $$;

SELECT emp_delete();

--  using parameter 
CREATE or REPLACE Function delete_emp_id(p_emp_id INT)
    RETURNS void
        LANGUAGE SQL
        as 
            $$
                DELETE from employees WHERE employee_id = p_emp_id;
            $$;

SELECT delete_emp_id(29);
SELECT * from employees;