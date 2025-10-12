-- Active: 1760089614932@@127.0.0.1@5432@ph

CREATE Table students (
    student_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) not NULL,
    last_name VARCHAR(50) not NULL,
    age INT ,
    grade CHAR(2),
    course VARCHAR(50),
    email VARCHAR(100),
    dob DATE,
    blood_group VARCHAR(5),
    country VARCHAR(50)
);

INSERT INTO students (first_name, last_name, age, grade, course, email, dob, blood_group, country)
VALUES
('Nayeem', 'Miah', 21, 'A+', 'Computer Science', 'nayeem@example.com', '2004-05-12', 'O+', 'Bangladesh'),
('Rakib', 'Hasan', 22, 'B', 'Electrical', 'rakib.hasan@example.com', '2003-07-18', 'A+', 'Bangladesh'),
('Roksana', 'Akter', 20, 'A', 'Civil Engineering', 'roksana.akter@example.com', '2005-02-25', 'B+', 'Bangladesh'),
('Jannat', 'Ara', 19, 'A', 'Architecture', 'jannat.ara@example.com', '2006-01-14', 'O-', 'Bangladesh'),
('Hasib', 'Rahman', 23, 'C', 'Mechanical', 'hasib.rahman@example.com', '2002-08-22', 'B-', 'India'),
('Tania', 'Sultana', 21, 'B+', 'Computer Science', 'tania.sultana@example.com', '2004-04-09', 'AB+', 'Bangladesh'),
('Samiul', 'Islam', 22, 'A', 'Information Tech', 'samiul.islam@example.com', '2003-03-27', 'A+', 'Bangladesh'),
('Fahim', 'Ahmed', 24, 'B-', 'Electronics', 'fahim.ahmed@example.com', '2001-11-30', 'O+', 'Pakistan'),
('Mitu', 'Khatun', 20, 'A+', 'Software Eng', 'mitu.khatun@example.com', '2005-05-05', 'B+', 'Bangladesh'),
('Rafi', 'Chowdhury', 19, 'A', 'Civil Engineering', 'rafi.chowdhury@example.com', '2006-06-15', 'O+', 'Bangladesh'),
('Sumaiya', 'Akter', 21, 'B', 'Textile', 'sumaiya.akter@example.com', '2004-03-10', 'AB-', 'Bangladesh'),
('Asif', 'Hossain', 22, 'C+', 'Mechanical', 'asif.hossain@example.com', '2003-12-19', 'A-', 'Bangladesh'),
('Mithila', 'Rahman', 20, 'A', 'Computer Science', 'mithila.rahman@example.com', '2005-09-01', 'B+', 'Bangladesh'),
('Arman', 'Khan', 23, 'B', 'Electronics', 'arman.khan@example.com', '2002-10-29', 'O-', 'India'),
('Sadia', 'Haque', 19, 'A+', 'Architecture', 'sadia.haque@example.com', '2006-12-07', 'A+', 'Bangladesh'),
('Rony', 'Talukdar', 22, 'C', 'Mechanical', 'rony.talukdar@example.com', '2003-07-20', 'B-', 'Nepal'),
('Jahid', 'Hasan', 21, 'B+', 'Computer Science', 'jahid.hasan@example.com', '2004-01-11', 'O+', 'Bangladesh'),
('Taslima', 'Begum', 20, 'A', 'Civil Engineering', 'taslima.begum@example.com', '2005-08-03', 'A-', 'Bangladesh'),
('Nusrat', 'Jahan', 19, 'A+', 'Software Eng', 'nusrat.jahan@example.com', '2006-09-23', 'AB+', 'Bangladesh'),
('Imran', 'Ali', 23, 'B', 'Electrical', 'imran.ali@example.com', '2002-02-16', 'O+', 'Bangladesh');

SELECT * FROM students;
SELECT first_name , last_name FROM students;

SELECT email as "student email" from students;

SELECT * from students ORDER BY dob  DESC;


SELECT country from students ORDER BY country ASC;

SELECT DISTINCT country FROM students;
SELECT DISTINCT blood_group from students ORDER BY blood_group;

--  data filtering
SELECT * from students;
-- select from the student usa
SELECT * from students
    WHERE country = 'Bangladesh';

-- 'select students with B grade in Electrical
SELECT * from students 
    WHERE grade = 'B' AND course = 'Electrical';

--  select students with a specific blood group ('A+') 
SELECT * from students  
    WHERE blood_group = 'A+';

--  select student from india or pakistan and age  = 23
SELECT * from students
    WHERE (country ='India' OR country ='Pakistan') AND age=23;

--  compression operator
SELECT * from students
    WHERE age >= 20 AND course = 'Computer Science';

    -- !== && <> same


