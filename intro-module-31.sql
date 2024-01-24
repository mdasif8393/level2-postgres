-- Department Table
-- Each department has many employees
create table Department(
    deptID SERIAL PRIMARY KEY,
    deptName VARCHAR(50)
);

select * from Department;

insert into Department
    values (1, 'IT');

DELETE From Department 
    where deptID = 1;











-- Employee TABLE
-- Each employee belongs to a department
create table Employee(
    empID SERIAL PRIMARY KEY,
    empName VARCHAR(50) NOT NULL,
    departmentID INT, -- Foreign Key
    CONSTRAINT fk_constraint_department -- work ON DELETE & UPDATE
        FOREIGN KEY (departmentID) -- foreign key column name
        REFERENCES Department(deptID) -- reference table and column
);

select * from Employee;


insert into Employee
    values (1, 'Muktadir', 1);


DELETE from Employee
    where empID = 1;











-- Create courses table
create table courses(
    course_id SERIAL PRIMARY KEY,
    course_name VARCHAR(255) NOT NULL,
    description VARCHAR(255),
    published_date DATE 
);

-- insert data to courses table
INSERT INTO
    courses(course_name, description, published_date)
VALUES
    ('PostgresSQL for Developers', 'A complete postgresSQL for Developers', '2020-07-13'),
    ('PostgresSQL Administration', 'A postgresSQL Guide for DBA', NULL),
    ('PostgresSQL High Performance', NULL, NULL),
    ('PostgresSQL Bootcamp', 'Learn postgresSQL via Bootcamp', '2013-07-11' ),
    ('Mastering PostgresSQL', 'Mastering PostgresSQL in 21 days', '2012-06-30' );


-- Update database table row
-- Update one column
UPDATE courses
SET 
    course_name = 'Postgres for beginners'
WHERE
    course_id = 1;

--update multiple column
UPDATE courses
SET 
    course_name = 'Postgres for beginners',
    description = 'Dummy text'
WHERE
    course_id = 1;


-- update multiple rows
UPDATE courses
SET 
    course_name = 'Postgres for beginners',
    description = 'Dummy text'
WHERE
    course_id > 4;

-- multiple CONDITION
UPDATE courses
SET 
    course_name = 'Postgres for beginners',
    description = 'Dummy text'
WHERE
    course_id > 1 OR course_id > 5;
 


UPDATE courses
SET 
    course_name = 'Postgres for beginners',
    description = 'Dummy text'
WHERE
    course_id > 1 AND course_id > 5;

-- null a column
UPDATE courses
SET 
    course_name = 'PG',
    description = Null
WHERE
    course_id = 1;

-- delete 
DELETE FROM courses


select * from courses;