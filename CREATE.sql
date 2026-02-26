CREATE DATABASE SCHOOLDB;
USE SCHOOLDB;
DROP DATABASE SCHOOLDB;
USE SCHOOLDB;
CREATE DATABASE SCHOOLDB;
USE SCHOOLDB;
CREATE TABLE students (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    age INT,
    grade VARCHAR(10)
);
SHOW TABLES;
INSERT INTO students (first_name, last_name, age, grade)
VALUES 
('John', 'Doe', 15, 'A'),
('Priya', 'Kumar', 16, 'B'),
('Amit', 'Singh', 14, 'A');
SELECT * FROM students;
desc students;


