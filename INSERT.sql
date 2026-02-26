CREATE DATABASE SCHOOLDB;
SHOW DATABASES;
DROP DATABASE SCHOOLDB;
SHOW DATABASES;
USE SCHOOLDB;
CREATE TABLE STUDENTS(students_id int auto_increment primary key,
first_name varchar(50),last_name varchar (50),age int,
grade varchar(10));
insert into STUDENTS(first_name,last_name,age,grade) 
VALUES('JOHN','DOE',15,'A'),('Priya', 'Kumar', 16, 'B'),
('Amit', 'Singh', 14, 'A');
select * from students;