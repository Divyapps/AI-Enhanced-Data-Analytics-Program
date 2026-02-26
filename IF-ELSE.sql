CREATE DATABASE retail_db;
USE retail_db;
CREATE TABLE sales (
    sale_id INT AUTO_INCREMENT PRIMARY KEY,
    sale_date DATE,
    store VARCHAR(50),
    city VARCHAR(50),
    product VARCHAR(50),
    category VARCHAR(50),
    sales INT,
    quantity INT,
    profit INT,
    discount INT,
    customer_type VARCHAR(20)
);
INSERT INTO sales
(sale_date, store, city, product, category, sales, quantity, profit, discount, customer_type)
VALUES
('2024-01-01','Store A','Chennai','Laptop','Electronics',60000,8,9000,5,'Regular'),
('2024-01-02','Store B','Delhi','Mobile','Electronics',75000,10,12000,10,'New'),
('2024-01-03','Store C','Mumbai','Headphones','Accessories',8000,20,1300,0,'Regular'),
('2024-01-04','Store D','Hyderabad','Keyboard','Accessories',4000,15,600,3,'New'),
('2024-01-05','Store A','Chennai','Tablet','Electronics',35000,6,5000,5,'Regular');
SELECT * FROM sales;
SELECT product, sales,
CASE
    WHEN sales >= 50000 THEN 'High Sales'
    WHEN sales BETWEEN 20000 AND 49999 THEN 'Medium Sales'
    ELSE 'Low Sales'
END AS sales_level
FROM sales;
SELECT product, profit,
CASE
    WHEN profit > 7000 THEN 'Excellent'
    WHEN profit BETWEEN 3000 AND 7000 THEN 'Good'
    ELSE 'Low'
END AS profit_status
FROM sales;
SELECT customer_type,
CASE
    WHEN customer_type = 'New' THEN 'Welcome Offer'
    WHEN customer_type = 'Regular' THEN 'Loyalty Offer'
END AS offer_type
FROM sales;
SELECT *
FROM sales
WHERE
CASE
    WHEN category = 'Electronics' THEN sales > 30000
    ELSE sales > 5000
END;







