-- ============================================
-- SET 3
-- ============================================

-- Q3(a) List all students belonging to a specified department

SELECT s.*
FROM Student s
JOIN Department d
ON s.department_id = d.department_id
WHERE d.department_name = 'AIML';


-- Q3(b) Insert six employee records and display all records

INSERT INTO Employee
(employee_id, name, department, salary)
VALUES
(101, 'Ravi', 'IT', 55000),
(102, 'Priya', 'HR', 45000),
(103, 'David', 'Finance', 65000),
(104, 'Anu', 'IT', 60000),
(105, 'Rahul', 'Finance', 70000),
(106, 'Sneha', 'HR', 50000);

SELECT * FROM Employee;


-- Q3(c) SUM, AVG, MIN, MAX and COUNT using GROUP BY and HAVING

SELECT department,
       SUM(salary) AS total_salary,
       AVG(salary) AS average_salary,
       MIN(salary) AS minimum_salary,
       MAX(salary) AS maximum_salary,
       COUNT(*) AS employee_count
FROM Employee
GROUP BY department
HAVING AVG(salary) > 50000;


-- Q3(d) UNION, INTERSECTION and SET DIFFERENCE

-- UNION
SELECT employee_id
FROM Employee_IT
UNION
SELECT employee_id
FROM Employee_Finance;

-- INTERSECTION
SELECT employee_id
FROM Employee_IT
INTERSECT
SELECT employee_id
FROM Employee_Finance;

-- SET DIFFERENCE
SELECT employee_id
FROM Employee_IT
EXCEPT
SELECT employee_id
FROM Employee_Finance;

DESC Student;
DESC Department;

SELECT s.*
FROM Student s
JOIN Department d
ON s.dept_id = d.dept_id
WHERE d.dept_name = 'AIML';