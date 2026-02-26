CREATE DATABASE IF NOT EXISTS CustomerDB;

USE CustomerDB;
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(100)
);

-- 2️⃣ Insert sample data


INSERT INTO Customers (CustomerID, CustomerName) VALUES
(1, 'Alfreds Futterkiste'),
(2, 'Ana Trujillo'),
(3, 'Around the Horn'),
(4, 'Berglunds snabbköp'),
(5, 'Antonio Moreno'),
(6, 'Lino Ardito'),
(7, 'Mario Pontes'),
(8, 'Lina'),
(9, 'Mara'),
(10, 'Ardito');
-- Starts with 'a'
SELECT * FROM Customers WHERE CustomerName LIKE 'a%';

-- Ends with 'a'
SELECT * FROM Customers WHERE CustomerName LIKE '%a';

-- Contains 'or'
SELECT * FROM Customers WHERE CustomerName LIKE '%or%';

-- Second letter is 'r'
SELECT * FROM Customers WHERE CustomerName LIKE '_r%';

-- Starts with 'a' and at least 2 characters
SELECT * FROM Customers WHERE CustomerName LIKE 'a_%';

-- Starts with 'a' and at least 3 characters
SELECT * FROM Customers WHERE CustomerName LIKE 'a__%';
CREATE DATABASE SchoolDB;
USE SchoolDB;

-- Starts with 'a' and ends with 'o'
SELECT * FROM Customers WHERE CustomerName LIKE 'a%o';




  
  





  












