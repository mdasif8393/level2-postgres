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
    course_id = 6;


-- delete a row
DELETE FROM courses
WHERE course_id = 8


select * from courses;













-- use test 3 database
CREATE TABLE employees (
    emp_id SERIAL PRIMARY KEY,
    emp_name VARCHAR(100),
    emp_department VARCHAR(50),
    emp_salary DECIMAL(10, 2),
    emp_hire_date DATE
);

INSERT INTO employees (emp_name, emp_department, emp_salary, emp_hire_date)
VALUES
    ('Jack Wilson', 'Engineering', 76000.00, '2022-11-05'),
    ('Linda Garcia', 'Marketing', 68000.00, '2022-12-15'),
    ('Mike Davis', 'Sales', 92000.00, '2023-01-20'),
    ('Nancy Brown', 'Human Resources', 74000.00, '2023-02-10'),
    ('Oscar Smith', 'Engineering', 82000.00, '2023-03-12'),
    ('Pamela Johnson', 'Marketing', 67000.00, '2023-04-25'),
    ('Quincy Miller', 'Sales', 88000.00, '2023-05-08'),
    ('Rachel Lee', 'Human Resources', 73000.00, '2023-06-14'),
    ('Samuel Chen', 'Engineering', 80000.00, '2023-07-30'),
    ('Tina White', 'Marketing', 71000.00, '2023-08-17'),
    ('Jack Wilson', 'Engineering', 76000.00, '2022-11-05'),  -- Repeated data
    ('Linda Garcia', 'Marketing', 68000.00, '2022-12-15'),  -- Repeated data
    ('Mike Davis', 'Sales', 92000.00, '2023-01-20'),  -- Repeated data
    ('Nancy Brown', 'Human Resources', 74000.00, '2023-02-10'),  -- Repeated data
    ('Oscar Smith', 'Engineering', 82000.00, '2023-03-12'),  -- Repeated data
    ('Pamela Johnson', 'Marketing', 67000.00, '2023-04-25'),  -- Repeated data
    ('Quincy Miller', 'Sales', 88000.00, '2023-05-08'),  -- Repeated data
    ('Rachel Lee', 'Human Resources', 73000.00, '2023-06-14'),  -- Repeated data
    ('Samuel Chen', 'Engineering', 80000.00, '2023-07-30'),  -- Repeated data
    ('Tina White', 'Marketing', 71000.00, '2023-08-17'),  -- Repeated data
    ('John Doe', 'Engineering', 75000.00, '2022-01-05'),
    ('Jane Smith', 'Marketing', 60000.00, '2022-02-15'),
    ('Bob Johnson', 'Sales', 80000.00, '2022-03-20'),
    ('Alice Williams', 'Human Resources', 70000.00, '2022-04-10'),
    ('Charlie Brown', 'Engineering', 85000.00, '2022-05-12'),
    ('Emma Davis', 'Marketing', 65000.00, '2022-06-25'),
    ('Frank Miller', 'Sales', 90000.00, '2022-07-08'),
    ('Grace Wilson', 'Human Resources', 72000.00, '2022-08-14'),
    ('Henry Lee', 'Engineering', 78000.00, '2022-09-30'),
    ('Ivy Chen', 'Marketing', 70000.00, '2022-10-17'),
    ('John Doe', 'Engineering', 75000.00, '2022-01-05'),  -- Repeated data
    ('Jane Smith', 'Marketing', 60000.00, '2022-02-15'),  -- Repeated data
    ('Bob Johnson', 'Sales', 80000.00, '2022-03-20'),  -- Repeated data
    ('Alice Williams', 'Human Resources', 70000.00, '2022-04-10'),  -- Repeated data
    ('Charlie Brown', 'Engineering', 85000.00, '2022-05-12'),  -- Repeated data
    ('Emma Davis', 'Marketing', 65000.00, '2022-06-25'),  -- Repeated data
    ('Frank Miller', 'Sales', 90000.00, '2022-07-08'),  -- Repeated data
    ('Grace Wilson', 'Human Resources', 72000.00, '2022-08-14'),  -- Repeated data
    ('Henry Lee', 'Engineering', 78000.00, '2022-09-30'),  -- Repeated data
    ('Ivy Chen', 'Marketing', 70000.00, '2022-10-17'); 

select * from employees;

-- DIstinct show all unique value
select DISTINCT emp_department from employees;













-- Select
CREATE TABLE IF NOT EXISTS departments (
        deptID SERIAL primary key,
        name text not null
);

INSERT INTO departments (name) VALUES
  ('Sales'),
  ('Marketing'),
  ('Finance'),
  ('Human Resources'),
  ('IT'),
  ('Engineering'),
  ('Customer Service'),
  ('Research and Development'),
  ('Legal'),
  ('Operations'),
  ('Quality Assurance'),
  ('Product Management'),
  ('Administration'),
  ('Supply Chain'),
  ('Business Development'),
  ('Public Relations'),
  ('Training'),
  ('Information Security'),
  ('Design'),
  ('Accounting'),
  ('Facilities'),
  ('Health and Safety'),
  ('Project Management'),
  ('Sales Operations'),
  ('Support'),
  ('Data Analysis'),
  ('Procurement'),
  ('Internal Audit'),
  ('Event Management'),
  ('Community Relations'),
  ('Infrastructure'),
  ('Logistics'),
  ('Content Development'),
  ('Quality Control'),
  ('Media Production'),
  ('Education'),
  ('Regulatory Affairs'),
  ('Communications'),
  ('Facility Management'),
  ('Graphic Design'),
  ('Web Development'),
  ('Public Affairs'),
  ('Strategic Planning'),
  ('Risk Management'),
  ('Real Estate'),
  ('Environmental Health'),
  ('Occupational Safety'),
  ('Legal Affairs');


CREATE TABLE IF NOT EXISTS employees (
    empID serial primary key,
    name text not null,
    email text not null,
    salary integer not null,
    joining_date date not null,
    deptID integer not null,
    CONSTRAINT fk_deptID
        FOREIGN KEY(deptID)
        REFERENCES departments(deptID)
);


INSERT INTO employees (name, email, salary, joining_date, deptID) VALUES
('John Doe', 'john.doe@example.com', 60000, '2022-01-01', 1),
  ('Jane Smith', 'jane.smith@example.com', 70000, '2022-02-15', 2),
  ('Bob Johnson', 'bob.johnson@example.com', 80000, '2022-03-30', 3),
  ('Alice Williams', 'alice.williams@example.com', 90000, '2022-04-12', 4),
  ('Charlie Brown', 'charlie.brown@example.com', 100000, '2022-05-25', 5),
  -- Add more employee data as needed
  ('David Davis', 'david.davis@example.com', 75000, '2022-06-08', 6),
  ('Emily Evans', 'emily.evans@example.com', 85000, '2022-07-21', 7),
  ('Frank Fisher', 'frank.fisher@example.com', 95000, '2022-08-04', 8),
  ('Grace Garcia', 'grace.garcia@example.com', 105000, '2022-09-17', 9),
  ('Henry Harris', 'henry.harris@example.com', 110000, '2022-10-30', 10),
  -- Add more employee data as needed
  ('Isabel Ingram', 'isabel.ingram@example.com', 72000, '2022-11-12', 11),
  ('Jack Jackson', 'jack.jackson@example.com', 82000, '2022-12-25', 12),
  ('Karen Kelly', 'karen.kelly@example.com', 92000, '2023-01-07', 13),
  ('Liam Lee', 'liam.lee@example.com', 102000, '2023-02-20', 14),
  ('Mia Mitchell', 'mia.mitchell@example.com', 112000, '2023-03-05', 15),
  -- Add more employee data as needed
  ('Noah Nelson', 'noah.nelson@example.com', 77000, '2023-04-18', 16),
  ('Olivia Olson', 'olivia.olson@example.com', 87000, '2023-05-01', 17),
  ('Peter Peterson', 'peter.peterson@example.com', 97000, '2023-06-14', 18),
  ('Quinn Quinn', 'quinn.quinn@example.com', 107000, '2023-07-27', 19),
  ('Ryan Ross', 'ryan.ross@example.com', 117000, '2023-08-09', 20),
  -- Add more employee data as needed
  ('Sara Scott', 'sara.scott@example.com', 79000, '2023-09-22', 21),
  ('Tom Turner', 'tom.turner@example.com', 89000, '2023-10-05', 22),
  ('Uma Underwood', 'uma.underwood@example.com', 99000, '2023-11-18', 23),
  ('Victor Vargas', 'victor.vargas@example.com', 109000, '2023-12-01', 24),
  ('Wendy Walsh', 'wendy.walsh@example.com', 119000, '2024-01-14', 25),
  -- Add more employee data as needed
    ('Xander Xavier', 'xander.xavier@example.com', 80000, '2024-02-27', 26),
  ('Yara Young', 'yara.young@example.com', 90000, '2024-03-11', 27),
  ('Zane Zimmerman', 'zane.zimmerman@example.com', 100000, '2024-04-24', 28),
  ('Abby Adams', 'abby.adams@example.com', 110000, '2024-05-07', 29),
  ('Ben Bennett', 'ben.bennett@example.com', 120000, '2024-06-20', 30),
  -- Add more employee data as needed
  ('Cora Chapman', 'cora.chapman@example.com', 82000, '2024-07-03', 31),
  ('Dean Dunn', 'dean.dunn@example.com', 92000, '2024-08-16', 32),
  ('Ella Ellis', 'ella.ellis@example.com', 102000, '2024-08-29', 33),
  ('Finn Ford', 'finn.ford@example.com', 112000, '2024-09-11', 34),
  ('Gina Gordon', 'gina.gordon@example.com', 122000, '2024-09-24', 35),
  -- Add more employee data as needed
  ('Hank Hayes', 'hank.hayes@example.com', 83000, '2024-10-07', 36),
  ('Ivy Ingram', 'ivy.ingram@example.com', 93000, '2024-10-20', 37),
  ('Jake James', 'jake.james@example.com', 103000, '2024-11-02', 38),
  ('Kara Kelly', 'kara.kelly@example.com', 113000, '2024-11-15', 39),
  ('Liam Lane', 'liam.lane@example.com', 123000, '2024-11-28', 40),
  -- Add more employee data as needed
  ('Mona Murphy', 'mona.murphy@example.com', 84000, '2024-12-11', 41),
  ('Nina Nelson', 'nina.nelson@example.com', 94000, '2024-12-24', 42),
  ('Oscar Olson', 'oscar.olson@example.com', 104000, '2025-01-06', 43),
  ('Penny Peterson', 'penny.peterson@example.com', 114000, '2025-01-19', 44),
  ('Quincy Quinn', 'quincy.quinn@example.com', 124000, '2025-02-01', 45);

-- select all fields

select * from departments;
select * from employees;

-- select some columns
select name, email, joining_date, salary from employees;


-- where - Filter Data
select * from employees
where emp_salary > 90000;

select * from employees
where salary < 90000 OR salary > 100000;

select * from employees
where joining_date >= '2024-01-01';

select * from employees
where name <> 'John Doe' AND salary > 80000;

-- Order by desc async
select * from employees
    ORDER BY name DESC;

SELECT * from employees
    ORDER BY name ASC
    LIMIT 10
    OFFSET 1;

-- highest salary
SELECT * from employees
    ORDER BY salary DESC
    LIMIT 1;


--3rd highest salary
SELECT * from employees
    ORDER BY salary DESC
    OFFSET 2
    LIMIT 1;


--- IN
select * from employees
    where empid IN (2, 3, 5);

-- NOT IN
select * from employees
    where empid NOT IN (2, 3, 5);

-- BETWEEN
select * from employees
    where salary between 50000 AND 80000;

-- LIKE
select * from employees
    where name LIKE '%a%';

select * from employees
 where name LIKE 'A%';

select * from employees
 where name LIKE '%a';

select * from employees
    where name LIKE '%mit%';

-- specific position
select * from employees
    where name LIKE '_r%';

select * from employees
    where name LIKE '__r%';

select * from employees
    where name LIKE '__r%__';

select * from employees
    where name LIKE 'S%t';

select * from employees
    where name = NULL;


--create deapertment1 and employees1 table
CREATE TABLE department1(
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100)
);

create table employees1(
    employee_id INT PRIMARY KEY,
    full_name VARCHAR(100),
    department_id INT,
    job_role VARCHAR(100),
    manager_id INT,
    FOREIGN KEY (department_id) REFERENCES department1(department_id)
);

INSERT INTO department1 (department_id, department_name) VALUES
(1, 'Human Resources'),
(2, 'Marketing'),
(3, 'Finance'),
(4, 'IT'),
(5, 'Sales'),
(6, 'Operations'),
(7, 'Research and Development'),
(8, 'Customer Support'),
(9, 'Legal'),
(10, 'Quality Assurance'),
(11, 'Administration'),
(12, 'Public Relations'),
(13, 'Engineering'),
(14, 'Product Management'),
(15, 'Supply Chain'),
(16, 'Data Science'),
(17, 'Design'),
(18, 'Business Development'),
(19, 'Training and Development'),
(20, 'Information Security'),
(21, 'Facilities Management'),
(22, 'Health and Safety'),
(23, 'Public Affairs'),
(24, 'Event Planning'),
(25, 'Analytics'),
(26, 'Procurement'),
(27, 'Internal Audit'),
(28, 'Project Management'),
(29, 'Customer Success'),
(30, 'Environmental Affairs');



INSERT INTO employees1 (employee_id, full_name, department_id, job_role, manager_id) VALUES
(1, 'John Smith', 1, 'HR Manager', NULL),
(2, 'Jane Doe', 2, 'Marketing Specialist', 1),
(3, 'Michael Johnson', 3, 'Financial Analyst', 1),
(4, 'Emily Davis', 4, 'IT Specialist', 3),
(5, 'David Wilson', 5, 'Sales Representative', 2),
(6, 'Olivia Brown', 6, 'Operations Manager', NULL),
(7, 'Robert Taylor', 7, 'R&D Scientist', 6),
(8, 'Sophia Miller', 8, 'Customer Support Specialist', 6),
(9, 'Daniel Anderson', 9, 'Legal Counsel', 6),
(10, 'Ava Martinez', 10, 'QA Tester', 7),
(11, 'Matthew Lee', 11, 'Administrative Assistant', 6),
(12, 'Emma Harris', 12, 'PR Specialist', 11),
(13, 'Christopher Clark', 13, 'Software Engineer', 4),
(14, 'Isabella Turner', 14, 'Product Manager', 13),
(15, 'Andrew White', 15, 'Supply Chain Coordinator', 6),
(16, 'Oliver Hall', 16, 'Data Scientist', 13),
(17, 'Amelia King', 17, 'Graphic Designer', 12),
(18, 'Henry Green', 18, 'Business Development Manager', 6),
(19, 'Mia Baker', 19, 'Training Coordinator', 11),
(20, 'Ethan Carter', 20, 'Information Security Analyst', 13),
(21, 'Liam Turner', 21, 'Facilities Manager', 6),
(22, 'Charlotte Cooper', 22, 'Safety Specialist', 21),
(23, 'Sebastian Hayes', 23, 'Public Affairs Coordinator', 12),
(24, 'Harper Jenkins', 24, 'Event Planner', 23),
(25, 'Aiden Lewis', 25, 'Analytics Specialist', 16),
(26, 'Elizabeth Murphy', 26, 'Procurement Officer', 18),
(27, 'Carter Reed', 27, 'Internal Auditor', 3),
(28, 'Grace Fisher', 28, 'Project Manager', 14),
(29, 'Owen Brooks', 29, 'Customer Success Manager', 8),
(30, 'Lily Bennett', 30, 'Environmental Affairs Specialist', 27);

select * from department1;

select * from employees1;

-- INNER JOIN
select employees1.full_name, employees1.job_role, department1.department_name
FROM employees1
INNER JOIN department1 ON employees1.department_id = department1.department_id;

select *
FROM employees1
INNER JOIN department1 ON employees1.department_id = department1.department_id;

select employees1.full_name, employees1.job_role, department1.department_name
FROM department1
INNER JOIN employees1 ON department1.department_id = employees1.employee_id;

--Left JOIN
select * from employees1
LEFT JOIN department1 ON employees1.employee_id = department1.department_id;

--Right JOIN
select * from employees1
RIGHT JOIN department1 ON employees1.employee_id = department1.department_id;

-- Full JOIN
select * from employees1
FULL JOIN department1 ON employees1.employee_id = department1.department_id;

-- NATURAL JOIN
select * from employees1
NATURAL JOIN department1;

-- CROSS JOIN
select * from employees1
NATURAL JOIN department1;





--Aggregate FUNCTION
select * from employees;

select avg(salary) as averageSalary from employees;

select Min(salary) as minimumSalary from employees;

select Max(salary) as maxSalary from employees;

select Sum(salary) as totalSalary from employees;

--Group BY
select deptid,  AVG(salary) from employees
 GROUP BY deptid;

select d.name, avg(e.salary), sum(e.salary), max(e.salary), min(e.salary) from employees as e 
FULL JOIN departments as d ON d.deptid = e.deptid
GROUP BY d.name
HAVING avg(e.salary) > 70000;


select d.name, avg(e.salary), sum(e.salary), max(e.salary), min(e.salary), count(*) from 
departments as d
FULL JOIN employees as e on e.deptid = d.deptid
GROUP BY d.deptid
HAVING d.deptid < 20;






-- sub queries
select * from employees;

select * from employees where salary = (
    select max(salary) from employees
);

select * from employees where salary in (
    select salary from employees where name like '%a%'
);



select * from employees where salary >(
    select avg(salary) from employees
);


select email, (
    select avg(salary) from employees
) 
    from employees;


select deptID, avg_salary from (
    select deptID, avg(salary) as avg_salary from employees group by deptID
);





-- indexing
explain ANALYSE select empid from employees;

select * from employees;

create index name_idx on employees(name);

explain ANALYSE select empid, name, email from employees where name LIKE '%a%';

