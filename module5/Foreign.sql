-- Active: 1760089614932@@127.0.0.1@5432@ph@public
CREATE Table "user" (
    id SERIAL PRIMARY KEY ,
    username VARCHAR(25) not NULL
);

create table post (
    id SERIAL primary key,
    title TEXT not NULL,
    user_id INTEGER REFERENCES "user"(id)
);

INSERT INTO "user" (username) VALUES
('Akash'),
('Batash'),
('Sagor'),
('Nodi');
SELECT * from "user";

INSERT INTO post (title, user_id) VALUES
    ('Enjoying a sunny day with Akash 🤭', 1),
    ('Batash just sherd amazing recipe 🤭', 2),
    ('Explore adventures with sagor 🤭', 3),
    ('Nodi''s wisdom always leaves me impressed 🤭', 4);

SELECT * from post;


alter Table post 
    alter COLUMN user_id set not NULL;

INSERT INTO post( title, user_id) VALUES('hello form user_id 7', 2); 

--  create a new table user and post --> title and username
SELECT title, username from post
    JOIN "user" on post.user_id = "user".id;

SELECT * from post 
    JOIN "user" ON post.user_id="user".id;


SELECT "user".id from post 
    JOIN "user" ON post.user_id="user".id;

SELECT * from post as p
    JOIN "user" as u on p.user_id = u.id;

SELECT * from "user"
    JOIN post on post.user_id="user".id;

INSERT INTO post (title, user_id) VALUES
    ( 'this is a new title' NULL)

SELECT * FROM post 
    LEFT JOIN "user" on post.user_id= "user".id;
SELECT * FROM post 
    RIGHT JOIN "user" on post.user_id= "user".id;

SELECT * FROM post 
    FULL OUTER JOIN "user" on post.user_id= "user".id;

























