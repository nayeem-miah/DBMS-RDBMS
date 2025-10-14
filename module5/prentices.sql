-- Active: 1760089614932@@127.0.0.1@5432@ph@public
SELECT * FROM employs
    JOIN departments using(dep_id);
SELECT * FROM employs
    JOIN departments on departments.dep_id = employs.dep_id;