drop database companydb;
CREATE DATABASE companydb;
USE companydb;
CREATE TABLE departments (
    dept_id INT AUTO_INCREMENT PRIMARY KEY,
    dept_name VARCHAR(50)
);
CREATE TABLE employees (
    emp_id INT AUTO_INCREMENT PRIMARY KEY,
    emp_name VARCHAR(50),
    salary DECIMAL(10,2),
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES departments(dept_id)
);
insert INTO departments (dept_name)
VALUES ('HR'), ('IT'), ('Finance');

INSERT INTO employees (emp_name, salary, dept_id)
VALUES 
('John', 50000, 1),
('Priya', 65000, 2),
('Amit', 55000, 2),
('Divya', 70000, 3),
('Ravi', 40000, 1);

SELECT * FROM employees;
SELECT emp_name, salary FROM employees;
SELECT emp_name, salary FROM employees WHERE salary > 50000;
SELECT COUNT(*) AS total_employees FROM employees;
SELECT emp_name, salary FROM employees ORDER BY salary DESC, emp_name ASC;

SELECT COUNT(*) AS total_employees FROM employees;
SELECT AVG(salary) AS average FROM employees;
SELECT COUNT(*) FROM employees;
SELECT SUM(salary) as total FROM employees;
SELECT CONCAT('Hello', ' ', 'World') AS Greeting;
select length ('hello world') as 'Length of string';
select upper('hello');

SELECT UPPER('hello') AS UpperCase,
       LOWER('HELLO') AS LowerCase;
       SELECT LEFT('Database', 4) AS LeftPart,
       RIGHT('Database', 4) AS RightPart;
       
       SELECT SUBSTRING('Database', 3, 4) AS SubStringPart;
       SELECT REPLACE('Hello World', 'World', 'MySQL') AS NewString;
       SELECT TRIM('   Hello   ') AS Trimmed,
       LTRIM('   Hello') AS LeftTrimmed,
       RTRIM('Hello   ') AS RightTrimmed;
       SELECT INSTR('Hello World', 'hello') AS Position;
       SELECT REPEAT('Hi! ', 4) AS RepeatedString;
       SELECT REPEAT(CONCAT('Hi!', '\n'), 4) AS RepeatedString;
       

       
       SELECT LPAD('5', 3, '0') AS LeftPadded,
       RPAD('5', 3, '*') AS RightPadded;
       SELECT 
  ADDTIME('10:30:00', '2:15:00') AS AddTime,
  SUBTIME('10:30:00', '1:00:00') AS SubTime;
  CREATE TABLE Marks (
  StudentID INT,
  Subject VARCHAR(30),
  Score INT
);
INSERT INTO Marks VALUES
(1, 'Maths', 88),
(1, 'Science', 92),
(2, 'Maths', 76),
(2, 'Science', 81),
(3, 'Maths', 90),
(3, 'Science', 95);
show tables;
drop table employees;
show tables;
SELECT CURDATE() AS TodayDate;
SELECT NOW() AS CurrentDateTime;
SELECT CURRENT_DATE() AS DateToday, CURRENT_TIME() AS TimeNow;
SELECT DATE('2025-10-31 14:30:00') AS OnlyDate;
SELECT TIME('2025-10-31 14:30:00') AS OnlyTime;
SELECT 
  YEAR('2025-10-31') AS YearPart,
  MONTH('2025-10-31') AS MonthPart,
  DAY('2025-10-31') AS DayPart;
  SELECT DAYNAME('2025-10-31') AS DayName;
  SELECT MONTHNAME('2025-10-31') AS MonthName;
  SELECT DATE_ADD('2025-10-31', INTERVAL 10 DAY) AS Add10Days,
       DATE_ADD('2025-10-31', INTERVAL 2 MONTH) AS Add2Months;
       SELECT DATE_SUB('2025-10-31', INTERVAL 15 DAY) AS Sub15Days;
       SELECT DATEDIFF(curdate(), '2025-10-31') AS DaysDifference;
       
       SELECT 
  TIMESTAMPDIFF(DAY, '2025-01-01', '2025-10-31') AS Days,
  TIMESTAMPDIFF(MONTH, '2025-01-01', '2025-10-31') AS Months,
  TIMESTAMPDIFF(YEAR, '2020-01-01', '2025-10-31') AS Years;
  SELECT DATE_FORMAT('2025-10-31', '%W, %M %e, %Y') AS FormattedDate;



















       









