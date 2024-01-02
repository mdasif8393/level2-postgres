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
INSERT INTO user3 (user_id, username, email, age) VALUES  (2, "asif2", "asif2@gmail.com", 19)


drop table "user"



-- Display Table
SELECT * FROM user3

