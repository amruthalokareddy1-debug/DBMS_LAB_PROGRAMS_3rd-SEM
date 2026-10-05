SELECT *
FROM Employee
WHERE Salary < (
    SELECT Salary
    FROM Employee
    WHERE Emp_Name = 'David'
);
CREATE VIEW Employee_Details AS
SELECT Emp_ID, Emp_Name, Salary, City
FROM Employee;
SELECT *
FROM Employee_Details;
SELECT 
    Course_ID,
    COUNT(Student_ID) AS Number_of_Students
FROM Enrollment
GROUP BY Course_ID;
SELECT 
    C.Course_ID,
    C.Course_Name,
    COUNT(E.Student_ID) AS Number_of_Students
FROM Course C
LEFT JOIN Enrollment E
    ON C.Course_ID = E.Course_ID
GROUP BY C.Course_ID, C.Course_Name;
CREATE USER 'user1'@'localhost' IDENTIFIED BY 'password123';
GRANT SELECT, INSERT
ON University.Employee
TO 'user1'@'localhost';
REVOKE INSERT
ON University.Employee
FROM 'user1'@'localhost';
SHOW GRANTS FOR 'user1'@'localhost';