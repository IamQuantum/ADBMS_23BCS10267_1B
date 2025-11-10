--Hard Level

CREATE TABLE Table_A (
    EmpID INT PRIMARY KEY,
    Ename VARCHAR(50),
    Salary INT
);

CREATE TABLE Table_B (
    EmpID INT PRIMARY KEY,
    Ename VARCHAR(50),
    Salary INT
);

INSERT INTO Table_A (EmpID, Ename, Salary) VALUES
(1 , 'AA', 1000),
(2 , 'BB', 300);


INSERT INTO Table_B (EmpID, Ename, Salary) VALUES
(2 , 'BB', 400),
(3 , 'CC', 100);

SELECT EmpID,Ename,min(Salary)
FROM 
(SELECT * FROM Table_A
UNION ALL
SELECT * FROM Table_B)
AS INTERMEDIATE_RESULT
GROUP BY EmpID,Ename
