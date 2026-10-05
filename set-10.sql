SELECT D.Dept_ID, D.Dept_Name
FROM Department D
WHERE EXISTS (
    SELECT 1
    FROM Employee E
    WHERE E.Department = D.Dept_Name
      AND E.Salary > 60000
);
CREATE TABLE Employee_Materialized AS
SELECT Emp_ID, Emp_Name, Department, Salary
FROM Employee;
SELECT *
FROM Employee_Materialized;
SELECT S.Student_ID, S.Student_Name
FROM Student S
LEFT JOIN Enrollment E
    ON S.Student_ID = E.Student_ID
WHERE E.Student_ID IS NULL;
START TRANSACTION;

UPDATE Employee
SET City = 'Hyderabad'
WHERE Emp_ID = 101;

SELECT * FROM Employee
WHERE Emp_ID = 101;

ROLLBACK;

SELECT * FROM Employee
WHERE Emp_ID = 101;
START TRANSACTION;

UPDATE Employee
SET City = 'Vijayawada'
WHERE Emp_ID = 101;

COMMIT;