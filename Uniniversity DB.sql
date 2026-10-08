create database db;
use db;
CREATE TABLE Department (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50),
    location VARCHAR(50)
);

INSERT INTO Department VALUES
(101, 'CSE', 'Hyderabad'),
(102, 'AIML', 'Kakinada'),
(103, 'ECE', 'Rajahmundry'),
(104, 'EEE', 'Vijayawada');

CREATE TABLE Employee (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    city VARCHAR(50),
    salary DECIMAL(10,2),
    dept_id INT,
    hire_date DATE,
    FOREIGN KEY (dept_id) REFERENCES Department(dept_id)
);

INSERT INTO Employee VALUES
(1, 'David', 'Hyderabad', 60000, 101, '2022-06-15'),
(2, 'John', 'Kakinada', 45000, 102, '2023-01-10'),
(3, 'Amrutha', 'Rajahmundry', 55000, 102, '2023-07-20'),
(4, 'Priya', 'Vijayawada', 70000, 103, '2021-09-05'),
(5, 'Ravi', 'Kakinada', 40000, 101, '2024-02-12');

CREATE TABLE Student (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(50)
);

INSERT INTO Student VALUES
(201, 'Anil'),
(202, 'Bhavya'),
(203, 'Charan'),
(204, 'Divya'),
(205, 'Kiran');

CREATE TABLE Course (
    course_id VARCHAR(10) PRIMARY KEY,
    course_name VARCHAR(50)
);

INSERT INTO Course VALUES
('C101', 'Python'),
('C102', 'DBMS'),
('C103', 'Java'),
('C104', 'Data Structures');

CREATE TABLE Enrollment (
    enrollment_id INT PRIMARY KEY,
    student_id INT,
    course_id VARCHAR(10),
    grade CHAR(1),
    FOREIGN KEY (student_id) REFERENCES Student(student_id),
    FOREIGN KEY (course_id) REFERENCES Course(course_id)
);

INSERT INTO Enrollment VALUES
(1, 201, 'C101', 'A'),
(2, 201, 'C102', 'B'),
(3, 202, 'C101', 'A'),
(4, 203, 'C103', 'B'),
(5, 204, 'C102', 'A'),
(6, 205, 'C101', 'C');
SELECT Student.student_id, Student.student_name, Course.course_name, Enrollment.grade FROM Student INNER JOIN Enrollment ON Student.student_id = Enrollment.student_id INNER JOIN Course ON Enrollment.course_id = Course.course_id;