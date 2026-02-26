USE datasimpl;
CREATE TABLE grade (
    student_id INT,
    student_name VARCHAR(50),
    subject VARCHAR(50),
    marks INT,
    grade CHAR(2)
);
INSERT INTO grade (student_id, student_name, subject, marks, grade) VALUES
(1, 'Arun',   'Maths',    85, 'A'),
(1, 'Arun',   'Science',  78, 'B'),

(2, 'Anitha', 'Maths',    92, 'A'),
(2, 'Anitha', 'Science',  88, 'A'),

(3, 'Bala',   'Maths',    67, 'C'),
(3, 'Bala',   'Science',  72, 'B'),

(4, 'Divya',  'Maths',    90, 'A'),
(4, 'Divya',  'Science',  95, 'A'),

(5, 'Ravi',   'Maths',    58, 'D'),
(5, 'Ravi',   'Science',  65, 'C'),

(6, 'Asha',   'Maths',    75, NULL),
(6, 'Asha',   'Science',  80, 'B');
1. Display all records from the grade table.
2. Show the names of all students who scored more than 80 marks.
3. Find the total number of students in the table.
4. Display students who scored between 60 and 90 marks.
5. Sort the students by marks in descending order.
6. Show the average marks obtained by all students.
7. Display the highest and lowest marks scored in the table.
8. Find the total marks obtained in each subject.
9. Display each student’s name and their average marks across subjects.
10.List all students whose grade is 'A'.
11. Count how many students got each grade.
12. Show the top 3 students with the highest marks.
13. Display subjects where average marks are above 75.
14. Find students whose names start with the letter ‘A’.