CREATE DATABASE zepto_db;
USE zepto_db;
CREATE TABLE zepto(
    sku_id SERIAL PRIMARY KEY,
    category VARCHAR(255),
    name VARCHAR(255) NOT NULL,
    mrp NUMERIC,
    discount_percent NUMERIC,
    available_quantity INTEGER,
    discounted_selling_price NUMERIC,
    weight_in_grams INTEGER,
    out_of_stock BOOLEAN,
    quantity INTEGER
);
USE zepto_db;
SELECT * FROM zepto_v2;
SELECT COUNT(*) FROM zepto_v2;
SELECT *
FROM zepto_v2
WHERE category IS NULL OR 
 name IS NULL OR 
 mrp IS NULL OR 
 discount_percent IS NULL OR 
 available_quantity IS NULL OR 
 discounted_selling_price IS NULL OR 
 weight_in_grams IS NULL OR 
 out_of_stock IS NULL OR 
 quantity IS NULL;
 DESCRIBE zepto_v2;
 SHOW COLUMNS FROM zepto_v2;