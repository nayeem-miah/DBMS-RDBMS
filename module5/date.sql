-- Active: 1760089614932@@127.0.0.1@5432@ph
-- show timezone;

CREATE Table timeZ (
    ts TIMESTAMP without time zone,
 tsz TIMESTAMP with time zone
);

/* Iam using timestamp with time zone; */
INSERT INTO timeZ VALUES('2025-10-13 18:37:04.183953+06','2025-10-13 18:37:04.183953+06');


SELECT * FROM timeZ;
SELECT now();
SELECT CURRENT_DATE;
SELECT now()::date;
SELECT now()::time;

SELECT to_char(now(), 'yyyy-mm-dd');
SELECT to_char(now(), 'yyyy/mm/dd');
SELECT to_char(now(), 'day');


SELECT CURRENT_DATE - INTERVAL '1 day';
SELECT age(CURRENT_DATE , '2025-06-25');

SELECT * , age(CURRENT_DATE, dob) from students;
SELECT extract(month from '2025-06-25':: date);
SELECT TRUE :: BOOLEAN;
SELECT 'string' :: BOOLEAN;