/* JOINS */
Create Database TalentTree

Use TalentTree 

create table Employee(
	EmpID int primary key,
	Ename nvarchar(20),
	Department nvarchar(20),
	ManagerID int 
)

insert into Employee values (1,'A','HR',NULL),(2,'B','Finance',1),(3,'C','It',1),(4,'D','Finance',2),(5,'E','IT',3),(6,'F','HR',1)

Select * from Employee

Select E1.Ename as [Employee Name], E1.Department as [Employee Department], E2.Ename[Manager_name], E2.Department[Manager_Dept] 
from Employee as E1
left outer join 
Employee as E2
on 
E1.ManagerID=E2.EmpID


--Question 2 HARD


--Create Year_tbl (holds actual NPV values)
CREATE TABLE Year_tbl (																																																																																																											
    ID INT,
    YEAR INT,
    NPV INT
);

-- Create Queries table (requested values)
CREATE TABLE Queries (
    ID INT,
    YEAR INT
);

-- Insert data into Year_tbl
INSERT INTO Year_tbl (ID, YEAR, NPV)																
VALUES
(1, 2018, 100),
(7, 2020, 30),
(13, 2019, 40),
(1, 2019, 113),
(2, 2008, 121),
(3, 2009, 12),
(11, 2020, 99),
(7, 2019, 0);

-- Insert data into Queries
INSERT INTO Queries (ID, YEAR)
VALUES
(1, 2019),
(2, 2008),
(3, 2009),
(7, 2018),
(7, 2019),
(7, 2020),
(13, 2019);

Select qt.ID as [ID], qt.YEAR as [Year], isnull(yt.NPV,0)
from Year_tbl as yt
right outer join 
Queries as qt
on 
yt.ID=qt.ID and yt.YEAR=qt.YEAR

