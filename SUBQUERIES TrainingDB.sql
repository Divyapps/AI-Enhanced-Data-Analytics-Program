#A subquery is a query written inside another query, and it is executed first.
CREATE DATABASE TrainingDB;
USE TrainingDB;
CREATE TABLE Employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    salary INT
);
INSERT INTO Employees VALUES
(1, 'Amit', 30000),
(2, 'Ravi', 40000),
(3, 'Neha', 50000),
(4, 'Priya', 60000);
SELECT * FROM Employees;
SELECT AVG(salary)
FROM Employees;
SELECT *
FROM Employees
WHERE salary > (
    SELECT AVG(salary)
    FROM Employees
);
SELECT AVG(salary) FROM Employees;
SELECT *
FROM Employees
WHERE salary = (
    SELECT MAX(salary)
    FROM Employees
);
SELECT *
FROM Employees
WHERE salary = (
    SELECT MIN(salary)
    FROM Employees
);
SELECT *
FROM Employees
WHERE salary > (
    SELECT 40000
);
SELECT emp_name,
       (SELECT AVG(salary) FROM Employees) AS avg_salary
FROM Employees;











