create database companydb;
use companydb;
CREATE TABLE departments (
    dept_id INT AUTO_INCREMENT PRIMARY KEY,
    dept_name VARCHAR(50)
);

drop database companydb;
CREATE TABLE employees (
    emp_id INT AUTO_INCREMENT PRIMARY KEY,
    emp_name VARCHAR(50),
    salary DECIMAL(10,2),
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES departments(dept_id)
);
INSERT INTO departments (dept_name)
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
SELECT emp_name, salary FROM employees ORDER BY salary DESC;
SELECT emp_name, salary FROM employees ORDER BY salary DESC, emp_name ASC;
USE COMPANYDB;
DESC EMPLOYEES;




