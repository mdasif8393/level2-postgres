-- Create a table
CREATE TABLE student(
    student_id INT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    cgpa NUMERIC(1,2)
)

--Change Table NAME
ALTER TABLE student
    RENAME to learners

-- Delete a Table
DROP TABLE learners;

-- Create student table using constraints
CREATE TABLE users(
    user_id SERIAL PRIMARY KEY,
    username VARCHAR(255) UNIQUE NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL
)

-- create user TABLE
CREATE TABLE "user"(
    user_id SERIAL PRIMARY KEY,
    username VARCHAR(255) UNIQUE NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL
)

-- Drop Table USER
DROP TABLE "user";

-- SET Primary key seperately 
CREATE TABLE "user"(
    user_id SERIAL,
    username VARCHAR(255) UNIQUE NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    PRIMARY KEY (user_id)
)

--Composite KEY
CREATE TABLE "user"(
    user_id SERIAL,
    username VARCHAR(255) UNIQUE NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    PRIMARY KEY (user_id, username)
)

-- Combinedly unique email and username
CREATE TABLE "user"(
    user_id SERIAL,
    username VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    PRIMARY KEY (user_id),
    UNIQUE (user_id, email)
)

-- default value ADD
CREATE TABLE "user"(
    user_id SERIAL,
    username VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    age int DEFAULT 18,
    PRIMARY KEY (user_id),
    UNIQUE (user_id, email)
)

CREATE TABLE user3(
    user_id SERIAL,
    username VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    age int DEFAULT 18,
    PRIMARY KEY (user_id),
    UNIQUE (user_id, email)
)

-- insert VALUES
insert into user3 values (1, 'abc', 'abc@gmail.com')

-- show specific COLUMN
select username from user3;

-- insert another way
INSERT INTO user3 (user_id, username, email, age) VALUES (2, "asif2", "asif2@gmail.com", 19)

-- insert another way
INSERT INTO user3
VALUES
(2, 'abc2', 'abc2@gmail.com'),
(3, 'abc3', 'abc3@gmail.com')

-- ALTER to all password column
ALTER TABLE user3
    ADD COLUMN password VARCHAR(255) DEFAULT 'admin123' NOT NULL

-- ALter to remove a column
ALTER TABLE user3
    DROP COLUMN password1

-- Alter add demo column
ALTER TABLE user3
    ADD COLUMN demo int

--Alter demo column to FLOAT
ALTER TABLE user3
    ALTER COLUMN demo type FLOAT(4)

-- change demo column databas type text
ALTER TABLE user3
    ALTER COLUMN demo TYPE TEXT

-- set default value to demo COLUMN
ALTER TABLE user3
    ALTER COLUMN demo SET DEFAULT 'bandladesh'

-- remove default value from demo column
ALTER TABLE user3
    ALTER COLUMN demo drop DEFAULT

-- rename demo column to country
ALTER TABLE user3
    RENAME COLUMN demo TO country

-- set country column not NULL
ALTER TABLE user3
    ALTER COLUMN country set not null;

-- drop not null
ALTER TABLE user3
    ALTER COLUMN country drop not null;

-- make email column unique and give a NAME
ALTER TABLE user3
ADD CONSTRAINT unique_email UNIQUE(email);

-- drop unique constraint from email column
ALTER TABLE user3
    DROP CONSTRAINT unique_email

drop table "user"



-- Display Table
SELECT * FROM user3

