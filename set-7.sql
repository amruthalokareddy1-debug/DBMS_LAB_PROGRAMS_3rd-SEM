SELECT 
    S.Student_ID,
    S.Student_Name,
    C.Course_Name,
    E.Enrollment_Date,
    E.Grade
FROM Student S
INNER JOIN Enrollment E
    ON S.Student_ID = E.Student_ID
INNER JOIN Course C
    ON E.Course_ID = C.Course_ID;
    SELECT * FROM Employee;
    UPDATE Employee
SET City = 'Visakhapatnam'
WHERE Emp_ID = 101;
SELECT * FROM Employee
WHERE Emp_ID = 101;
SELECT ABS(-25) AS Absolute_Value;

SELECT ROUND(123.4567, 2) AS Rounded_Value;

SELECT CEIL(12.3) AS Ceiling_Value;

SELECT FLOOR(12.9) AS Floor_Value;

SELECT POWER(2, 3) AS Power_Value;

SELECT SQRT(25) AS Square_Root;
SELECT CURDATE() AS Current_Date;

SELECT CURTIME() AS Current_Time;

SELECT NOW() AS Current_Date_Time;

SELECT YEAR(CURDATE()) AS Current_Year;

SELECT MONTH(CURDATE()) AS Current_Month;

SELECT DAY(CURDATE()) AS Current_Day;
SELECT 
    E.Emp_ID,
    E.Emp_Name,
    E.Department,
    D.Dept_Name
FROM Employee E
INNER JOIN Department D
    ON E.Department = D.Dept_Name;
    SELECT 
    E.Emp_ID,
    E.Emp_Name,
    E.Department,
    D.Dept_Name
FROM Employee E
LEFT JOIN Department D
    ON E.Department = D.Dept_Name;
    SELECT 
    E.Emp_ID,
    E.Emp_Name,
    E.Department,
    D.Dept_Name
FROM Employee E
RIGHT JOIN Department D
    ON E.Department = D.Dept_Name;