DROP DATABASE STUDENT_DB;
CREATE DATABASE student_db;
USE student_db;
CREATE TABLE students (
    ROLL_NO INT PRIMARY KEY,
    NAME VARCHAR(50),
    ADDRESS VARCHAR(100),
    PHONE VARCHAR(15),
    Age INT
);
INSERT INTO students (ROLL_NO, NAME, ADDRESS, PHONE, Age)
VALUES
(1, 'HARSH', 'DELHI', 'XXXXXXXXXX', 18),
(2, 'PRATIK', 'BIHAR', 'XXXXXXXXXX', 19),
(3, 'RIYANKA', 'SILIGURI', 'XXXXXXXXXX', 20),
(4, 'DEEP', 'RAMNAGAR', 'XXXXXXXXXX', 18),
(5, 'SAPTARHI', 'KOLKATA', 'XXXXXXXXXX', 19),
(6, 'DHANRAJ', 'BARABAJAR', 'XXXXXXXXXX', 20),
(7, 'ROHIT', 'BALURGHAT', 'XXXXXXXXXX', 18),
(8, 'NIRAJ', 'ALIPUR', 'XXXXXXXXXX', 19);
SELECT * FROM students;
CREATE TABLE course_enrollment (
    COURSE_ID INT,
    ROLL_NO INT
);
INSERT INTO course_enrollment (COURSE_ID, ROLL_NO)
VALUES
(1, 1),
(2, 2),
(2, 4),
(3, 5),
(1, 6),
(4, 9),
(5, 10),
(4, 11);
SELECT * FROM course_enrollment;
SELECT 
  s.ROLL_NO, 
  s.NAME, 
  s.ADDRESS, 
  s.PHONE, 
  s.Age, 
  c.COURSE_ID
FROM students s
JOIN course_enrollment c
ON s.ROLL_NO = c.ROLL_NO;
SHOW TABLES;
#SELECT column_name(s)
#FROM table1
#INNER JOIN table2
#ON table1.common_column = table2.common_column;

SELECT 
    s.ROLL_NO,
    s.NAME,
    s.ADDRESS,
    s.AGE,
    c.COURSE_ID
FROM students s
LEFT JOIN course_enrollment c
ON s.ROLL_NO = c.ROLL_NO;
SELECT 
    s.NAME, 
    c.COURSE_ID
FROM students s
 JOIN course_enrollment c
ON c.ROLL_NO = s.ROLL_NO;
SELECT 
    s.ROLL_NO,
    s.NAME,
    s.AGE,
    c.COURSE_ID
FROM students s
RIGHT JOIN course_enrollment c
ON s.ROLL_NO = c.ROLL_NO;
SELECT 
    s.NAME, 
    c.COURSE_ID
FROM students s
RIGHT JOIN course_enrollment c
ON c.ROLL_NO = s.ROLL_NO;
SELECT s.ROLL_NO, s.NAME, s.AGE, c.COURSE_ID
FROM students s
LEFT JOIN course_enrollment c
ON s.ROLL_NO = c.ROLL_NO

UNION

SELECT s.ROLL_NO, s.NAME, s.AGE, c.COURSE_ID
FROM students s
RIGHT JOIN course_enrollment c
ON s.ROLL_NO = c.ROLL_NO;
SELECT 
    s.NAME, 
    c.COURSE_ID
FROM students s
LEFT JOIN course_enrollment c
ON s.ROLL_NO = c.ROLL_NO

UNION

SELECT 
    s.NAME, 
    c.COURSE_ID
FROM students s
RIGHT JOIN course_enrollment c
ON s.ROLL_NO = c.ROLL_NO;
SELECT 
    s.NAME, 
    c.COURSE_ID
FROM students s
LEFT JOIN course_enrollment c
ON s.ROLL_NO = c.ROLL_NO

UNION

SELECT 
    s.NAME, 
    c.COURSE_ID
FROM students s
RIGHT JOIN course_enrollment c
ON s.ROLL_NO = c.ROLL_NO;

















