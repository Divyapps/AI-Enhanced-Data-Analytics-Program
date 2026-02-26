DROP DATABASE SHOPDB;
CREATE DATABASE shopdb;
USE shopdb;

CREATE TABLE products (
    product_id INT PRIMARY KEY AUTO_INCREMENT,
    product_name VARCHAR(50),
    price DECIMAL(10,2),
    stock INT
);

CREATE TABLE customers (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_name VARCHAR(50),
    city VARCHAR(50)
);

CREATE TABLE orders (
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT,
    product_id INT,
    quantity INT,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);
INSERT INTO products (product_name, price, stock)
VALUES 
('Laptop', 65000.00, 10),
('Mobile', 25000.00, 25),
('Headphones', 2000.00, 50),
('Smartwatch', 5000.00, 20);
INSERT INTO customers (customer_name, city)
VALUES 
('Ravi', 'Delhi'),
('Priya', 'Chennai'),
('Amit', 'Mumbai'),
('Divya', 'Pune');
INSERT INTO orders (customer_id, product_id, quantity)
VALUES 
(1, 1, 1),
(2, 2, 2),
(3, 3, 1),
(4, 4, 3);
SELECT * FROM PRODUCTS;
UPDATE products 
SET price = 70000.00 
WHERE product_id = 1;
SELECT * FROM PRODUCTS;
UPDATE customers
SET city = 'Hyderabad'
WHERE customer_name = 'Divya';
SELECT * FROM CUSTOMERS;
SELECT * FROM customers WHERE customer_name = 'Divya';
ALTER TABLE products
ADD category VARCHAR(30);
SELECT * FROM PRODUCTS;
ALTER TABLE products
DROP COLUMN category;
SHOW TABLES;
SELECT * FROM PRODUCTS;
ALTER TABLE products
RENAME TO items;

SELECT * FROM items;
SELECT * FROM products;

















