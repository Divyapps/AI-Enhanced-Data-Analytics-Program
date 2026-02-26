CREATE DATABASE StudentDB;
USE StudentDB;

CREATE TABLE students (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    department VARCHAR(30),
    marks INT
);

INSERT INTO students (name, age, department, marks) VALUES
('Anisha', 18, 'Computer Science', 85),
('Karthik', 19, 'IT', 78),
('Meera', 18, 'Computer Science', 92),
('Rohan', 20, 'Mechanical', 65),
('Sanjay', 21, 'IT', 88);
=================================================
1 Display all records from the students table.
select * from students;
2 Display only name and marks of all students.
select name,marks
from students;

3 Display students who scored more than 80 marks.
select*from students
where marks>80;
4 Display students whose department is 'Computer Science'.
5 Display students ordered by marks in descending order.
6 Display the top 2 highest scoring students.
7 Count how many students belong to the 'IT' department.
8 Display students whose name starts with letter 'A'.
9 Display students whose marks are between 60 and 90.
10 Display students whose age is NOT equal to 18.
11 Display students with name containing 'an' (example: Kannan, Anisha).
12 Find the highest marks in the table.
13 Find the average marks of all students.
14 Find the total number of students.
15 Display total marks by each department using GROUP BY.
16.Update marks to 95 where student_id = 3.
17. Delete the student whose student_id = 5.
