-- Active: 1704104166074@@127.0.0.1@5432@test2
--CREATE DATABASE test1;
--USE test2;

--ALTER DATABASE test2 RENAME TO test3;

-- Create a student table

-- CREATE TABLE student(
--     student_id INT,
--     first_name VARCHAR(50),
--     last_name VARCHAR(50),
--     cgpa NUMERIC(1,2)
-- )

-- create database test2

-- change table NAME

-- ALTER TABLE student RENAME TO learners;

-- delete TABLE

-- DROP TABLE learners;


-- create a table with CONSTRAINT

-- CREATE TABLE "user1"(
--     user_id SERIAL PRIMARY KEY,
--     username VARCHAR(255) UNIQUE NOT NULL,
--     email VARCHAR(255) UNIQUE NOT NULL,
--     age int DEFAULT 18
-- )

-- insert value to a TABLE

-- insert into user2 values (1, 'abc', 'abc@gmail.com')

-- select * from user1

-- Insert data to user 1 table

-- INSERT INTO user1 (user_id, username, email, age) VALUES(3, 'Muktadir', 'muktadir@ph.com', 94);

-- INSERT INTO user1
-- VALUES
-- (1, 'Muktadir1', 'Muktadir1@ph.com'),
-- (2, 'Muktadir2', 'Muktadir2@ph.com');


-- --add a column
-- ALTER table user1 
-- add column password VARCHAR(255) DEFAULT 'admin123' not null; 

-- ALTER table user1 add column country int;


-- --Drop a COLUMN
-- ALTER TABLE user1
-- drop column passwordf;

-- -- TRUNCATE TABLE user1;

-- --Change data type of a column
-- ALTER TABLE user1
--     ALTER COLUMN country type FLOAT(4);

-- ALTER TABLE user1
--     ALTER COLUMN country type text

-- -- set default value
-- ALTER TABLE user1
--     alter column country set DEFAULT 'bangladesh';

-- --remove default VALUES
-- ALTER TABLE user1
--     alter column country drop DEFAULT;

-- INSERT INTO user1 values(5, 'Muktadir5', 'Muktadir5@ph.com')

-- -- rename a COLUMN
-- ALTER TABLE user1
--     RENAME COLUMN country to country;

-- --Add a constraint
-- ALTER table user1
--     ALTER COLUMN country set not null;

-- --Drop a constraint
-- ALTER table user1
--     ALTER COLUMN country drop not null;

-- ALTER TABLE user1
--     ADD CONSTRAINT unique_email UNIQUE(email);

-- ALTER TABLE user1
--     DROP CONSTRAINT unique_email;


-- Select * from user1;