drop DATABASE company_db;
CREATE DATABASE company_db;
USE company_db;
CREATE TABLE employees (
  id INT PRIMARY KEY,
  name VARCHAR(50),
  age INT,
  department VARCHAR(50),
  salary DECIMAL(10,2)
);
INSERT INTO employees (id, name, age, department, salary) VALUES
(1, 'Aanya', 25, 'Sales', 45000),
(2, 'Rohan', 30, 'IT', 60000),
(3, 'Diya', 28, 'Finance', 55000),
(4, 'Ravi', 35, 'IT', 70000),
(5, 'Kiran', 29, 'Sales', 48000),
(6, 'Meena', 40, 'Finance', 75000);
SELECT * FROM employees;
SELECT name, salary FROM employees;
SELECT * FROM employees WHERE department = 'IT';
SELECT name, department, salary
FROM employees
WHERE salary > 50000;
SELECT * FROM employees ORDER BY salary DESC;
SELECT COUNT(*) AS total_employees FROM employees;
SELECT MAX(salary) AS highest_salary FROM employees;
SELECT department, AVG(salary) AS avg_salary
FROM employees
GROUP BY department;
SELECT * FROM employees
WHERE department IN ('IT', 'Finance');
SELECT * FROM employees
WHERE department <> 'Sales';
SELECT * FROM employees
WHERE age BETWEEN 28 AND 35;
SELECT * FROM employees
WHERE name LIKE 'R%';
CREATE TABLE high_earners AS
SELECT id, name, department, salary
FROM employees
WHERE salary > 60000;
SELECT * FROM high_earners;
ALTER TABLE employees
ADD COLUMN bonus DECIMAL(10,2)
AFTER salary;
UPDATE employees
SET bonus = 5000
WHERE department = 'IT';
ALTER TABLE employees
RENAME COLUMN bonus TO performance_bonus;
CREATE TABLE senior_employees AS
SELECT * FROM employees WHERE age > 30;
SELECT * FROM SENIOR_EMPLOYEES;
ALTER TABLE senior_employees
ADD PRIMARY KEY (id);
SELECT * FROM SENIOR_EMPLOYEES;
DESC SENIOR_EMPLOYEES;
DESC EMPLOYEES;

SELECT * FROM EMPLOYEES;
SELECT * FROM employees
ORDER BY salary DESC
LIMIT 3;
SELECT department, COUNT(*) AS total_employees
FROM employees
GROUP BY department;
SELECT * FROM employees
WHERE salary > (SELECT AVG(salary) FROM employees);
ALTER TABLE employees
ADD COLUMN joining_date DATE;
ALTER TABLE employees
ADD COLUMN city VARCHAR(50) AFTER name;
DESC employees;
SELECT * FROM EMPLOYEES;
UPDATE employees SET city = 'Delhi', joining_date = '2020-05-01' WHERE id = 1;
SELECT * FROM EMPLOYEES;
UPDATE employees SET city = 'Mumbai', joining_date = '2019-07-15' WHERE id = 2;
UPDATE employees SET city = 'Chennai', joining_date = '2021-03-10' WHERE id = 3;
UPDATE employees SET city = 'Delhi', joining_date = '2018-12-22' WHERE id = 4;
UPDATE employees SET city = 'Pune', joining_date = '2020-08-19' WHERE id = 5;
UPDATE employees SET city = 'Delhi', joining_date = '2017-04-05' WHERE id = 6;
SELECT * FROM employees;
ALTER TABLE employees
MODIFY COLUMN department VARCHAR(100);
SELECT department, SUM(salary) AS total_salary
FROM employees
GROUP BY department;
SELECT department, SUM(salary) AS total_salary
FROM employees
GROUP BY department
HAVING SUM(salary) > 100000;
SELECT department, SUM(salary) AS total_salary
FROM employees
WHERE city = 'Delhi'
GROUP BY department
HAVING SUM(salary) > 70000;
ALTER TABLE employees
ADD COLUMN email VARCHAR(100) AFTER city;
SELECT * FROM employees LIMIT 5 OFFSET 0;
SELECT * FROM employees LIMIT 5 OFFSET 5;
SELECT * FROM employees
ORDER BY salary DESC
LIMIT 3;
SELECT department, AVG(salary) AS avg_salary
FROM employees
GROUP BY department
ORDER BY avg_salary DESC
LIMIT 2;

CREATE TABLE departments (
  department_id INT PRIMARY KEY,
  department_name VARCHAR(50),
  manager VARCHAR(50),
  location VARCHAR(50)
);

INSERT INTO departments VALUES
(1, 'Sales', 'Rita', 'Mumbai'),
(2, 'IT', 'Amit', 'Delhi'),
(3, 'Finance', 'Sunil', 'Chennai'),
(4, 'HR', 'Nisha', 'Pune');
SELECT e.name, e.department, d.manager, d.location
FROM employees e
INNER JOIN departments d
ON e.department = d.department_name;
SELECT e.name, e.department, d.manager, d.location
FROM employees e
LEFT JOIN departments d
ON e.department = d.department_name;
SELECT e.name, e.department, d.manager, d.location
FROM employees e
RIGHT JOIN departments d
ON e.department = d.department_name;
SELECT e.name, e.department, d.manager, d.location
FROM employees e
LEFT JOIN departments d
ON e.department = d.department_name

UNION

SELECT e.name, e.department, d.manager, d.location
FROM employees e
RIGHT JOIN departments d
ON e.department = d.department_name;
SELECT e.name, e.department, d.manager, d.location
FROM employees e
LEFT JOIN departments d
ON e.department = d.department_name

UNION

SELECT e.name, e.department, d.manager, d.location
FROM employees e
RIGHT JOIN departments d
ON e.department = d.department_name;



















