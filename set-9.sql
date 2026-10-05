-- ============================================
-- SET 9
-- ============================================

-- Q9(a) Count the number of students in each department

-- Q9(a) Count students in each department

-- Q9(a) Count students in each department

SELECT dept_id, COUNT(*) AS student_count
FROM Student
GROUP BY dept_id;


-- Q9(b) Delete a specified employee using DELETE

DELETE FROM Employee
WHERE emp_id = 101;

SELECT * FROM Employee;


-- Q9(c) Implement aggregate functions using
-- GROUP BY and HAVING clauses

SELECT department,
       COUNT(*) AS total_employees,
       SUM(salary) AS total_salary,
       AVG(salary) AS average_salary,
       MIN(salary) AS minimum_salary,
       MAX(salary) AS maximum_salary
FROM Employee
GROUP BY department
HAVING COUNT(*) > 1;


-- Q9(d) Perform UNION, INTERSECTION and SET DIFFERENCE

-- UNION
SELECT student_id
FROM Course1
UNION
SELECT student_id
FROM Course2;

-- INTERSECTION
SELECT student_id
FROM Course1
INTERSECT
SELECT student_id
FROM Course2;

-- SET DIFFERENCE
SELECT student_id
FROM Course1
EXCEPT
SELECT student_id
FROM Course2;

DESC Student;