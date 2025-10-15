-- Active: 1760089614932@@127.0.0.1@5432@ph@public
-- CREATE Trigger 
-- BEFORE DELETE 
-- on user 
-- for each row 
-- execute function function_name();

CREATE table my_users
(
    user_name VARCHAR(50),
    email VARCHAR(50)
);
INSERT INTO my_users VALUES
('mizanur', 'mizanur@gmail.com'),
 ('mortaza', 'mortaza@gmail.com');
 
 SELECT * from my_users;

 CREATE Table delete_users_audit
 (
    delete_user_name VARCHAR(50),
    deletedAt TIMESTAMP
 );
SELECT * from delete_users_audit

-- ? trigger function
CREATE or REPLACE Function save_deleted_user()
RETURNS TRIGGER
LANGUAGE PLPGSQL
as 
$$
    BEGIN
        insert into delete_users_audit VALUES(OLD.user_name, now());
        raise NOTICE 'deleted user audit log created';
        RETURN OLD;
    END
$$


CREATE or REPLACE Trigger save_deleted_user_trigger
BEFORE DELETE
on my_users
for EACH row
EXECUTE function save_deleted_user();


--  user deleted
EXPLAIN ANALYSE
DELETE from my_users WHERE user_name = 'mortaza';

show data_directory;


