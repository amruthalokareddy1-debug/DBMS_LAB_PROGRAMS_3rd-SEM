-- ============================================
-- SET 5
-- ============================================

-- Q5(a) Display courses along with the corresponding faculty names

SELECT c.course_name, f.faculty_name
FROM Course c
JOIN Faculty f
ON c.faculty_id = f.faculty_id;


-- Q5(b) Use SELECT with WHERE clause
-- to retrieve specified employee records

SELECT *
FROM Employee
WHERE department = 'IT';

SELECT *
FROM Employee
WHERE salary > 50000;


-- Q5(c) Implement string functions
-- CONCAT, UPPER, LOWER and LENGTH

-- Q5(c) CONCAT, UPPER, LOWER and LENGTH

SELECT CONCAT(emp_name, ' - ', city) AS employee_details
FROM Employee;

SELECT UPPER(emp_name) AS upper_name
FROM Employee;

SELECT LOWER(emp_name) AS lower_name
FROM Employee;

SELECT emp_name, LENGTH(emp_name) AS name_length
FROM Employee;

-- Q5(d) Perform LEFT OUTER JOIN, RIGHT OUTER JOIN
-- and INNER JOIN

-- INNER JOIN
SELECT d.department_name, e.name
FROM Department d
INNER JOIN Employee e
ON d.department_id = e.department_id;

-- LEFT OUTER JOIN
SELECT d.department_name, e.name
FROM Department d
LEFT OUTER JOIN Employee e
ON d.department_id = e.department_id;

-- RIGHT OUTER JOIN
SELECT d.department_name, e.name
FROM Department d
RIGHT OUTER JOIN Employee e
ON d.department_id = e.department_id;