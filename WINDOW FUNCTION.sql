
drop database companydb;
CREATE DATABASE CompanyDB;
USE CompanyDB;
CREATE TABLE employees (
    emp_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(30),
    salary INT,
    join_date DATE
);
INSERT INTO employees (name, department, salary, join_date) VALUES
('Arun', 'IT', 45000, '2023-01-10'),
('Priya', 'Finance', 55000, '2022-12-01'),
('Kiran', 'IT', 45000, '2023-03-15'),
('Divya', 'HR', 60000, '2022-11-20'),
('Rahul', 'IT', 70000, '2023-02-05'),
('Sneha', 'Finance', 52000,'2023-04-01'),
('Vikram', 'HR', 48000, '2023-01-25'),
('Anjali', 'IT', 65000, '2023-03-30');
select * from employees;
SELECT
    name,
    salary,
    ROW_NUMBER() OVER (ORDER BY salary DESC) AS row_num                                                       #Gives unique number based on salary (highest to lowest).
FROM employees;
SELECT
    name,
    salary,
    RANK() OVER (ORDER BY salary ASC) AS rank_no
FROM employees;
#If two salaries are equal, they get same rank (numbers skip).
SELECT
    name,
    salary,
    DENSE_RANK() OVER (ORDER BY salary ASC) AS dense_rank_no
FROM employees;
SELECT
    name,
    salary,
    LAG(salary) OVER (ORDER BY salary) AS previous_salary
FROM employees;
select * from employees;
SELECT
    name,
    salary,
    LEAD(salary) OVER (ORDER BY salary) AS next_salary
FROM employees;








