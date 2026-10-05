-- ============================================
-- SET 6
-- ============================================

-- Q6(a) Find employees working in Finance and IT
-- departments using nested queries

-- Q6(a) Find employees working in Finance and IT
-- departments using nested query

SELECT *
FROM Employee
WHERE department IN (
    SELECT department
    FROM Employee
    WHERE department IN ('Finance', 'IT')
);

-- Q6(b) Create and query a Materialized View

CREATE MATERIALIZED VIEW Department_Salary AS
SELECT department,
       AVG(salary) AS average_salary
FROM Employee
GROUP BY department;

SELECT * FROM Department_Salary;


-- Q6(c) Get the list of instructors teaching a specific course

SELECT f.faculty_name
FROM Faculty f
JOIN Course c
ON f.faculty_id = c.faculty_id
WHERE c.course_name = 'DBMS';


-- Q6(d) Demonstrate COMMIT, SAVEPOINT and ROLLBACK

UPDATE Employee
SET salary = salary + 3000
WHERE city = 'Hyderabad';

SAVEPOINT sp1;

UPDATE Employee
SET salary = salary + 2000
WHERE city = 'Chennai';

ROLLBACK TO sp1;

COMMIT;