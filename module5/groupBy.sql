-- Active: 1760089614932@@127.0.0.1@5432@ph
SELECT * FROM students;
SELECT country from  students
    GROUP BY country;

SELECT  country, count(*), avg(age) from students
    GROUP BY country;

SELECT country , avg(age) FROM students
    GROUP BY country
        HAVING avg(age) > 21;


--  filter Group using HAVING to show only countries with Average age above 22
select country, avg(age) from students
    GROUP BY country
        HAVING avg(age) > 22;

--  count students Born in each year
select extract(YEAR from dob) as birth_year, count(*) from students
    GROUP BY birth_year;
















