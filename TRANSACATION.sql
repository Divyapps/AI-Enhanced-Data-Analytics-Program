CREATE DATABASE namesystem;
USE namesystem;
CREATE TABLE users (
    user_id INT PRIMARY KEY AUTO_INCREMENT,
    user_name VARCHAR(50) NOT NULL,
    email VARCHAR(100),
    age INT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE orders (
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT,
    product_name VARCHAR(100),
    order_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);
CREATE TABLE products (
    product_id INT PRIMARY KEY AUTO_INCREMENT,
    product_name VARCHAR(100),
    price DECIMAL(10, 2),
    stock INT
);
INSERT INTO users (user_name, email, age)
VALUES
('John Doe', 'john@example.com', 25),
('Jane Smith', 'jane@example.com', 30),
('Mark Lee', 'mark@example.com', 28);
INSERT INTO products (product_name, price, stock)
VALUES
('Laptop', 80000.00, 50),
('Mobile', 30000.00, 100),
('Headphones', 3000.00, 200);
INSERT INTO orders (user_id, product_name)
VALUES
(1, 'Laptop'),
(2, 'Mobile'),
(3, 'Headphones');
SELECT * FROM ORDERS;
SELECT * FROM PRODUCTS;
SELECT * FROM USERS;

START TRANSACTION;
UPDATE products
SET price = 85000.00
WHERE product_name = 'Laptop';
SELECT * FROM products;
ROLLBACK;
SELECT * FROM products;
UPDATE products
SET price = 85000.00
WHERE product_name = 'Laptop';
COMMIT;
SELECT * FROM products;
DROP DATABASE NAMESYSTEM; 

      #A transaction is a group of SQL statements that are executed 
      together as one logical unit of work.

      # Either all the statements succeed →  COMMIT

      #  Or if something goes wrong, none of them apply → ROLLBACK 

        #COMMIT---- is used to save all the changes made during the current transaction permanently to the database.
          #Both INSERT and UPDATE are permanently saved to the database.
          
#ROLLBACK is used to undo all the changes made during the 
current transaction before commit.
    





