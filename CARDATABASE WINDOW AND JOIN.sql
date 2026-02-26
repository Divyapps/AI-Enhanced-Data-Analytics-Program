CREATE DATABASE CarDB;
USE CarDB;
CREATE TABLE car_details (
    car_id INT AUTO_INCREMENT PRIMARY KEY,
    car_name VARCHAR(50),
    brand VARCHAR(30),
    price INT,
    model_year INT,
    mileage INT
);
INSERT INTO car_details (car_name, brand, price, model_year, mileage) VALUES
('Swift', 'Maruti', 600000, 2020, 22),
('Baleno', 'Maruti', 800000, 2022, 21),
('Creta', 'Hyundai', 1500000, 2023, 19),
('Venue', 'Hyundai', 1200000, 2021, 18),
('Nexon', 'Tata', 1300000, 2023, 20),
('Punch', 'Tata', 800000, 2022, 22);
SELECT * 
FROM car_details
WHERE price > 1000000;
SELECT *
FROM car_details
WHERE car_name LIKE 'C%';
SELECT *
FROM car_details
WHERE car_name LIKE '%A';
UPDATE car_details
SET price = 650000
WHERE car_name = 'Swift';
SELECT 
    brand,
    AVG(price) AS avg_price
FROM car_details
GROUP BY brand;
SELECT 
    car_name,
    brand,
    price,
    ROW_NUMBER() OVER (ORDER BY price DESC) AS price_rank
FROM car_details; #Rank cars from most expensive to cheapest
SELECT 
    car_name,
    price,
    RANK() OVER (ORDER BY price DESC) AS price_rank
FROM car_details; #Handle same price cars (duplicate prices)
SELECT * FROM CAR_DETAILS;
SELECT
    brand,
    car_name,
    price,
    RANK() OVER (PARTITION BY brand ORDER BY price DESC) AS brand_rank
FROM car_details;
SELECT
    car_name,
    price,
    LAG(price) OVER (ORDER BY price DESC) AS previous_price
FROM car_details; #Compare car price with previous car
SELECT
    car_name,
    price,
    LEAD(price) OVER (ORDER BY price DESC) AS next_price
FROM car_details;#View next car price
SELECT
    car_name,
    price,
    SUM(price) OVER (ORDER BY price DESC) AS running_total_price
FROM car_details;















