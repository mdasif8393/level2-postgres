
-- Department Table
-- Each department has many employees
create table Department(
    deptID SERIAL PRIMARY KEY,
    deptName VARCHAR(50)
);

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

insert into Employee
    values (1, 'Muktadir', 1);

select * from Employee;

