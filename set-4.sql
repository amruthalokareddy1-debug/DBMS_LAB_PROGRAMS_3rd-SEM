-- ============================================
-- SET 4
-- ============================================

-- Q4(a) Find employees having the highest salary
-- using a nested query

SELECT *
FROM Employee
WHERE salary = (
    SELECT MAX(salary)
    FROM Employee
);

-- Q4(a) Find employees having the highest salary

SELECT *
FROM Employee
WHERE salary = (
    SELECT MAX(salary)
    FROM Employee
);


-- Q4(b) Create a View for employee details
-- and retrieve records from the View

CREATE VIEW Employee_View AS
SELECT employee_id, name, department, salary
FROM Employee;

SELECT * FROM Employee_View;

-- Q4(b) Create a View for employee details

CREATE VIEW Employee_View AS
SELECT emp_id, emp_name, dept, salary, city
FROM Employee;

SELECT * FROM Employee_View;
-- Q4(c) Find all students enrolled in a specific course

SELECT s.student_id, s.student_name
FROM Student s
JOIN Enrollment e
ON s.student_id = e.student_id
JOIN Course c
ON e.course_id = c.course_id
WHERE c.course_name = 'DBMS';


-- Q4(d) Demonstrate DCL commands GRANT and REVOKE

GRANT SELECT ON Employee TO user1;

REVOKE SELECT ON Employee FROM user1;

DESC Employee;

USE university;
CREATE VIEW Employee_View AS
SELECT emp_id, emp_name, dept, salary, city
FROM Employee;
DESC Employee;

SELECT *
FROM Student;
SELECT *
FROM Enrollment;
SELECT *
FROM Course;