CREATE DATABASE University;
USE University;

CREATE TABLE Department (
    Dept_ID INT PRIMARY KEY,
    Dept_Name VARCHAR(50)
);

CREATE TABLE Faculty (
    Faculty_ID INT PRIMARY KEY,
    Faculty_Name VARCHAR(50),
    Dept_ID INT,
    FOREIGN KEY (Dept_ID) REFERENCES Department(Dept_ID)
);

CREATE TABLE Student (
    Student_ID INT PRIMARY KEY,
    Student_Name VARCHAR(50),
    Dept_ID INT,
    FOREIGN KEY (Dept_ID) REFERENCES Department(Dept_ID)
);

CREATE TABLE Course (
    Course_ID INT PRIMARY KEY,
    Course_Name VARCHAR(50),
    Faculty_ID INT,
    FOREIGN KEY (Faculty_ID) REFERENCES Faculty(Faculty_ID)
);

CREATE TABLE Enrollment (
    Student_ID INT,
    Course_ID INT,
    Enrollment_Date DATE,
    Grade VARCHAR(5),
    PRIMARY KEY (Student_ID, Course_ID),
    FOREIGN KEY (Student_ID) REFERENCES Student(Student_ID),
    FOREIGN KEY (Course_ID) REFERENCES Course(Course_ID)
);
CREATE TABLE Employee (
    Emp_ID INT PRIMARY KEY,
    Emp_Name VARCHAR(50),
    Department VARCHAR(50),
    Salary DECIMAL(10,2),
    City VARCHAR(50)
);
INSERT INTO Employee
VALUES (101, 'David', 'Finance', 55000, 'Hyderabad');

INSERT INTO Employee
VALUES (102, 'John', 'IT', 65000, 'Vijayawada');

INSERT INTO Employee
VALUES (103, 'Priya', 'HR', 50000, 'Kakinada');
SELECT * FROM Employee;
UPDATE Employee
SET Salary = 60000
WHERE Emp_ID = 101;
DELETE FROM Employee
WHERE Emp_ID = 103;
SELECT CURDATE();
SELECT CURTIME();
SELECT NOW();
SELECT YEAR(NOW());
SELECT MONTH(NOW());
SELECT DAY(NOW());
SELECT SUM(Salary) AS Total_Salary
FROM Employee;

SELECT AVG(Salary) AS Average_Salary
FROM Employee;

SELECT MIN(Salary) AS Minimum_Salary
FROM Employee;

SELECT MAX(Salary) AS Maximum_Salary
FROM Employee;

SELECT COUNT(*) AS Employee_Count
FROM Employee;
CREATE TABLE Department_Employee (
    Dept_ID INT PRIMARY KEY,
    Dept_Name VARCHAR(50)
);

INSERT INTO Department_Employee
VALUES
(1, 'Finance'),
(2, 'IT'),
(3, 'HR');
CREATE TABLE Employee_Join (
    Emp_ID INT PRIMARY KEY,
    Emp_Name VARCHAR(50),
    Dept_ID INT,
    Salary DECIMAL(10,2)
);
INSERT INTO Employee_Join
VALUES
(101, 'David', 1, 55000),
(102, 'John', 2, 65000),
(103, 'Priya', 3, 50000),
(104, 'Ravi', 2, 60000);
SELECT *
FROM Employee_Join
NATURAL JOIN Department_Employee;
SELECT E.Emp_ID, E.Emp_Name, D.Dept_Name
FROM Employee_Join E, Department_Employee D
WHERE E.Dept_ID = D.Dept_ID;
SELECT E.Emp_ID, E.Emp_Name, D.Dept_Name
FROM Employee_Join E
INNER JOIN Department_Employee D
ON E.Dept_ID = D.Dept_ID;
SELECT E.Emp_ID, E.Emp_Name, D.Dept_Name
FROM Employee_Join E
LEFT OUTER JOIN Department_Employee D
ON E.Dept_ID = D.Dept_ID;
SELECT E.Emp_ID, E.Emp_Name, D.Dept_Name
FROM Employee_Join E
RIGHT OUTER JOIN Department_Employee D
ON E.Dept_ID = D.Dept_ID;