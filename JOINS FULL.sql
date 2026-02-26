CREATE DATABASE CollegeDB;
USE CollegeDB;
CREATE TABLE students (
    student_id INT PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(30)
);
CREATE TABLE marks (
    student_id INT,
    marks INT
);
INSERT INTO students VALUES
(1, 'Anisha', 'CS'),
(2, 'Karthik', 'IT'),
(3, 'Meera', 'CS'),
(4, 'Ravi', 'ECE'),
(5, 'Divya', 'IT'),
(6, 'Arjun', 'CS'),
(7, 'Neha', 'ECE'),
(8, 'Rahul', 'IT'),
(9, 'Sneha', 'CS'),
(10, 'Vikram', 'ECE');
INSERT INTO marks VALUES
(1, 85),
(2, 78),
(3, 92),
(5, 88),
(7, 74),
(9, 90);
SELECT * FROM STUDENTS;
SELECT * FROM MARKS;
SELECT s.student_id, s.name, m.marks
FROM students s
INNER JOIN marks m
ON s.student_id = m.student_id;
SELECT s.student_id, s.name, m.marks
FROM students s
LEFT JOIN marks m
ON s.student_id = m.student_id;
SELECT s.student_id, s.name, m.marks
FROM students s
RIGHT JOIN marks m
ON s.student_id = m.student_id;
SELECT s.student_id, s.name, m.marks
FROM students s
LEFT JOIN marks m ON s.student_id = m.student_id
UNION
SELECT s.student_id, s.name, m.marks
FROM students s
RIGHT JOIN marks m ON s.student_id = m.student_id;
SELECT s.name, m.marks
FROM students s
CROSS JOIN marks m;















