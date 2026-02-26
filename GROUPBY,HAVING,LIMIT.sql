DROP DATABASE school;
CREATE DATABASE school;
USE school;
CREATE TABLE grade (
    student_id INT,
    student_name VARCHAR(50),
    subject VARCHAR(50),
    marks INT,
    grade CHAR(2)
);
INSERT INTO grade (student_id, student_name, subject, marks, grade) VALUES
(1, 'Asha', 'Math', 85, 'A'),
(2, 'Ramesh', 'Math', 78, 'B'),
(3, 'Divya', 'Science', 90, 'A'),
(4, 'Rahul', 'Science', 68, 'C'),
(5, 'Sneha', 'English', 88, 'A'),
(6, 'Ravi', 'English', 72, 'B'),
(7, 'Asha', 'Science', 95, 'A'),
(8, 'Ramesh', 'English', 65, 'C');
SELECT subject, AVG(marks) AS average_marks
FROM grade
GROUP BY subject;   
SELECT grade, COUNT(*) AS total_students
FROM grade
GROUP BY grade;
SELECT subject, AVG(marks) AS average_marks
FROM grade
GROUP BY subject
HAVING AVG(marks) > 80;
SELECT grade, COUNT(*) AS total_students
FROM grade
GROUP BY grade
HAVING COUNT(*) > 2;
SELECT * FROM grade
LIMIT 3;
SELECT student_name, marks
FROM grade
ORDER BY marks DESC
LIMIT 4;
SELECT student_name, marks
FROM grade
ORDER BY marks DESC
LIMIT 2, 3;
SELECT student_name, marks
FROM grade
ORDER BY marks ASC
LIMIT 1;
SELECT student_name, marks
FROM grade
LIMIT 3 OFFSET 3;
SELECT * FROM GRADE;
SELECT student_name, marks
FROM grade
LIMIT 3, 3;

SELECT 
    subject,
    AVG(marks) AS average_marks
FROM grade
GROUP BY subject
HAVING AVG(marks) > 75
ORDER BY average_marks DESC
LIMIT 2;

SELECT subject, SUM(marks) AS total_marks
FROM grade
GROUP BY subject
HAVING SUM(marks) > 200
ORDER BY total_marks DESC
LIMIT 2;














