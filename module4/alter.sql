-- Active: 1760089614932@@127.0.0.1@5432@ph
SELECT * from person2;

ALTER TABLE person2
    ADD COLUMN email VARCHAR(25) DEFAULT 'default@gmail.com' not NULL ;
ALTER TABLE person2
    DROP  COLUMN email ;

--  insert data
INSERT INTO person2 values(7, 'test', 45)
INSERT INTO person2 values(8, 'test', 45, 'asdd@gmail.com')


ALTER Table person2 
    RENAME COLUMN age to user_age;

ALTER Table person2 
    alter COLUMN user_name type  VARCHAR(51);
ALTER Table person2
    alter COLUMN user_age set not NULL;

ALTER TABLE person2 
    alter COLUMN user_age DROP NOT NULL;

alter Table person2
    add constraint unique_person2_age UNIQUE(user_age);

alter Table person2
    add constraint pk_person2_age PRIMARY KEY(user_age);

ALTER table person2
    DROP constraint pk_person2_age ;


-- DROP TABLE person2;  /* remove table*/

TRUNCATE Table person2;