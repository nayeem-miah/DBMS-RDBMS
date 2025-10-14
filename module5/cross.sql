-- Active: 1760089614932@@127.0.0.1@5432@ph@public

CREATE Table employs (
    emp_id INT,
    emp_name VARCHAR(50),
    dep_id INT
);

CREATE Table departments (
    dep_id INT,
    dep_name VARCHAR(50)
);

INSERT INTO employs VALUES(1, 'Jhon doe', 101);
INSERT INTO employs VALUES(2, 'jane smith', 102);
INSERT INTO departments VALUES(101, 'Human research');
INSERT INTO departments VALUES(102, 'Marketing');
SELECT * FROM employs;
SELECT * FROM departments;

--  cress join
SELECT * from employs
    CROSS JOIN departments;
--  neutral join
SELECT * FROM employs
    NATURAL JOIN departments




