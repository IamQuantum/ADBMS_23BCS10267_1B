--Easy Level

CREATE TABLE MyEmployees (
    EmpId INT PRIMARY KEY IDENTITY(1,1),
    EmpName VARCHAR(50),
    Gender VARCHAR(10),
    Salary INT,
    City VARCHAR(50),
    Dept_id INT
);

INSERT INTO MyEmployees (EmpName, Gender, Salary, City, Dept_id)
VALUES
('Amit', 'Male', 50000, 'Delhi', 2),
('Priya', 'Female', 60000, 'Mumbai', 1),
('Rajesh', 'Male', 45000, 'Agra', 3),
('Sneha', 'Female', 55000, 'Delhi', 4),
('Anil', 'Male', 52000, 'Agra', 2),
('Sunita', 'Female', 48000, 'Mumbai', 1),
('Vijay', 'Male', 47000, 'Agra', 3),
('Ritu', 'Female', 62000, 'Mumbai', 2),
('Alok', 'Male', 51000, 'Delhi', 1),
('Neha', 'Female', 53000, 'Agra', 4),
('Simran', 'Female', 33000, 'Agra', 3);

create table dept(
id int unique not null, 
Dept_Name varchar(20) not null
)

insert into dept values(1, 'Accounts');
insert into dept values(2, 'HR');
insert into dept values(3, 'Admin');
insert into dept values(4, 'Counselling');

SELECT *FROM MyEmployees
SELECT MAX(SALARY) AS [2ND_HIGHEST] FROM MyEmployees WHERE SALARY !=
(SELECT MAX(SALARY) FROM MyEmployees) --62000



--Medium Level
CREATE TABLE department (
    id INT PRIMARY KEY,
    dept_name VARCHAR(50)
);

-- Create Employee Table
CREATE TABLE employee (
    id INT,
    name VARCHAR(50),
    salary INT,
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES department(id)
);


-- Insert into Department Table
INSERT INTO department (id, dept_name) VALUES
(1, 'IT'),
(2, 'SALES');

-- Insert into Employee Table
INSERT INTO employee (id, name, salary, department_id) VALUES
(1, 'JOE', 80000, 1),
(2, 'JIM', 90000, 1),
(3, 'HENRY', 80000, 2),
(4, 'SAM', 60000, 2),
(4, 'MAX', 90000, 1);

select D.dept_name, E.name, E.salary, D.id
from employee as E
Inner Join 
department as D
on 
E.department_id = D.id
where E.salary in
(
    select max(E2.salary) from 
    employee as E2
    where E2.department_id = E.department_id
)
order by D.dept_name; 