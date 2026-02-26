create database vvieww;
use vvieww;

CREATE TABLE Passengers (
    passenger_id INT PRIMARY KEY,
    passenger_name VARCHAR(50),
    gender VARCHAR(10),
    age INT
);
INSERT INTO Passengers VALUES
(1, 'Ravi Kumar', 'Male', 34),
(2, 'Meena Sharma', 'Female', 28),
(3, 'Divya Rao', 'Female', 25);

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

create view emp_view as select emp_id , name , salary from employees;
select * from emp_view;

create view top3 as select name , salary from employees order by salary desc limit 3;
select * from top3;

with task1 as (select emp_id , name , salary from employees)
select * from task1;



CREATE TABLE data (
    orderid INT PRIMARY KEY,
    c_name VARCHAR(100),
    location VARCHAR(100),
    category VARCHAR(50),
    unitprice INT,
    quantity INT,
    sales INT
);
INSERT INTO data (orderid, c_name, location, category, unitprice, quantity, sales) VALUES
(1, 'Sarah Lee', 'Mexico City', 'Electronics', 150, 1, 150),
(2, 'Michael Wong', 'Toronto', 'Furniture', 300, 1, 300),
(3, 'Emily Davis', 'San Francisco', 'Furniture', 150, 3, 450),
(4, 'David Kim', 'Vancouver', 'Clothing', 50, 5, 250),
(5, 'Sophia Patel', 'Tokyo', 'Electronics', 250, 2, 500),
(6, 'Liam Nguyen', 'Mexico City', 'Furniture', 400, 1, 400),
(7, 'Isabella Rossi', 'Toronto', 'Clothing', 75, 3, 225),
(8, 'Ethan Müller', 'San Francisco', 'Electronics', 180, 2, 360),
(9, 'Olivia Sato', 'Vancouver', 'Furniture', 350, 1, 350),
(10, 'Noah Dupont', 'Tokyo', 'Clothing', 60, 4, 240),
(11, 'Emma Hernandez', 'Mexico City', 'Electronics', 220, 2, 440),
(12, 'Jacob Kowalski', 'Toronto', 'Furniture', 280, 2, 560),
(13, 'Ava Morales', 'San Francisco', 'Clothing', 55, 5, 275),
(14, 'William Tanaka', 'Vancouver', 'Electronics', 190, 3, 570),
(15, 'Mia Dupuis', 'Tokyo', 'Furniture', 320, 1, 320),
(16, 'Alexander Ivanov', 'Mexico City', 'Clothing', 65, 4, 260),
(17, 'Isabella Garcia', 'Toronto', 'Electronics', 230, 2, 460),
(18, 'Daniel Moreno', 'San Francisco', 'Furniture', 290, 2, 580),
(19, 'Sophia Nguyen', 'Vancouver', 'Clothing', 70, 3, 210),
(20, 'John Smith', 'Tokyo', 'Electronics', 200, 2, 400);



#Create a CTE to display all orders from the Electronics category.
WITH ElectronicsOrders AS (
    SELECT *
    FROM data
    WHERE category = 'Electronics'
)
SELECT * FROM ElectronicsOrders;

#Write a CTE to list orders where sales are greater than 400.
WITH HighSales AS (
    SELECT *
    FROM data
    WHERE sales > 400
)
SELECT * FROM HighSales;

#Create a CTE to show customer name, location, and sales for customers from Toronto.
WITH TorontoCustomers AS (
    SELECT c_name, location, sales
    FROM data
    WHERE location = 'Toronto'
)
SELECT * FROM TorontoCustomers;

#Write a CTE to calculate total sales for each category.
WITH CategorySales AS (
    SELECT category, SUM(sales) AS total_sales
    FROM data
    GROUP BY category
)
SELECT * FROM CategorySales;

#Create a CTE to find average unit price by location.
WITH AvgPriceByLocation AS (
    SELECT location, AVG(unitprice) AS avg_unitprice
    FROM data
    GROUP BY location
)
SELECT * FROM AvgPriceByLocation;

#Write a CTE to display orders where quantity is more than 2.
WITH LargeQuantityOrders AS (
    SELECT *
    FROM data
    WHERE quantity > 2
)
SELECT * FROM LargeQuantityOrders;

#Create a CTE to show total sales by location.
WITH SalesByLocation AS (
    SELECT location, SUM(sales) AS total_sales
    FROM data
    GROUP BY location
)
SELECT * FROM SalesByLocation;

#Write a CTE to list customers who purchased Furniture.
WITH FurnitureCustomers AS (
    SELECT c_name, category
    FROM data
    WHERE category = 'Furniture'
)
SELECT * FROM FurnitureCustomers;

#Create a CTE to find maximum sales in each category.
WITH MaxSalesByCategory AS (
    SELECT category, MAX(sales) AS max_sales
    FROM data
    GROUP BY category
)
SELECT * FROM MaxSalesByCategory;

#Write a CTE to count number of orders per category.
WITH OrderCount AS (
    SELECT category, COUNT(*) AS total_orders
    FROM data
    GROUP BY category
)
SELECT * FROM OrderCount;

#Create a CTE to display customers whose sales are above the average sales.
WITH AvgSales AS (
    SELECT AVG(sales) AS avg_sales
    FROM data
)
SELECT *
FROM data
WHERE sales > (SELECT avg_sales FROM AvgSales);

#Write a CTE to find total quantity sold for each category.
WITH TotalQuantity AS (
    SELECT category, SUM(quantity) AS total_quantity
    FROM data
    GROUP BY category
)
SELECT * FROM TotalQuantity;

#Create a CTE to show orders from Mexico City only.
WITH MexicoOrders AS (
    SELECT *
    FROM data
    WHERE location = 'Mexico City'
)
SELECT * FROM MexicoOrders;

#Write a CTE to find locations where total sales exceed 1000.
WITH LocationSales AS (
    SELECT location, SUM(sales) AS total_sales
    FROM data
    GROUP BY location
)
SELECT *
FROM LocationSales
WHERE total_sales > 1000;

#Create a CTE to display top 5 highest sales orders.
WITH TopSales AS (
    SELECT *
    FROM data
    ORDER BY sales DESC
    LIMIT 5
)
SELECT * FROM TopSales;




















