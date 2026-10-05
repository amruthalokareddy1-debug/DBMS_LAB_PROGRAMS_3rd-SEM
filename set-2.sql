-- ============================================
-- SET 2
-- ============================================

-- Q2(a) Correlated subquery and nested query to find
-- employees earning more than the average salary

-- Nested Query
SELECT *
FROM Employee
WHERE salary > (SELECT AVG(salary) FROM Employee);

-- Correlated Subquery
SELECT e1.*
FROM Employee e1
WHERE e1.salary > (
    SELECT AVG(e2.salary)
    FROM Employee e2
    WHERE e2.department_id = e1.department_id
);


-- Q2(b) Create and query a View and Materialized View

-- View
CREATE VIEW Employee_Details AS
SELECT employee_id, name, salary, department_id
FROM Employee;

SELECT * FROM Employee_Details;

-- Materialized View
CREATE MATERIALIZED VIEW Employee_Salary AS
SELECT department_id, AVG(salary) AS avg_salary
FROM Employee
GROUP BY department_id;

SELECT * FROM Employee_Salary;


-- Q2(c) Retrieve students and their majors
SELECT student_id, student_name, major
FROM Student;


-- Q2(d) GRANT, REVOKE, COMMIT, SAVEPOINT and ROLLBACK

GRANT SELECT, INSERT ON Employee TO user1;

REVOKE INSERT ON Employee FROM user1;

UPDATE Employee
SET salary = salary + 5000
WHERE employee_id = 101;

SAVEPOINT sp1;

UPDATE Employee
SET salary = salary + 2000
WHERE employee_id = 102;

ROLLBACK TO sp1;

COMMIT;

DESC Employee;
-- Q2(a) Correlated Subquery

SELECT e1.*
FROM Employee e1
WHERE e1.salary > (
    SELECT AVG(e2.salary)
    FROM Employee e2
    WHERE e2.department = e1.department
);