CREATE TABLE Customers (
  CustomerID INT PRIMARY KEY,
  CustomerName VARCHAR(100),
  ContactName VARCHAR(100),
  Address VARCHAR(150),
  City VARCHAR(50),
  PostalCode VARCHAR(20),
  Country VARCHAR(50)
);
INSERT INTO Customers VALUES
(1, 'Alfreds Futterkiste', 'Maria Anders', 'Obere Str. 57', 'Berlin', '12209', 'Germany'),
(2, 'Ana Trujillo Emparedados', 'Ana Trujillo', 'Avda. Constitución 2222', 'Mexico City', '05021', 'Mexico'),
(3, 'Antonio Moreno Taquería', 'Antonio Moreno', 'Mataderos 2312', 'Mexico City', '05023', 'Mexico'),
(4, 'Around the Horn', 'Thomas Hardy', '120 Hanover Sq.', 'London', 'WA1 1DP', 'UK'),
(5, 'Berglunds snabbköp', 'Christina Berglund', 'Berguvsvägen 8', 'Luleå', 'S-958 22', 'Sweden'),
(6, 'Blauer See Delikatessen', 'Hanna Moos', 'Forsterstr. 57', 'Stuttgart', '70174', 'Germany'),
(7, 'Save-a-lot Markets', 'Jose Pavarotti', '187 Suffolk Ln.', 'Boise', '83720', 'USA'),
(8, 'Seven Seas Imports', 'Hari Kumar', '90 Wadhurst Rd.', 'London', 'OX15', 'UK');
CREATE TABLE Products (
  ProductID INT PRIMARY KEY,
  ProductName VARCHAR(100),
  Price DECIMAL(10,2)
);
INSERT INTO Products VALUES
(1, 'Chai', 18),
(2, 'Chang', 19),
(3, 'Aniseed Syrup', 10),
(4, 'Chef Anton Cajun Seasoning', 22),
(5, 'Grandmas Boysenberry Spread', 25),
(6, 'Uncle Bobs Organic Dried Pears', 30),
(7, 'Northwoods Cranberry Sauce', 40),
(8, 'Mishi Kobe Niku', 97),
(9, 'Ikura', 50),
(10, 'Queso Cabrales', 60);
SELECT * FROM Customers;
SELECT Country FROM Customers;
SELECT DISTINCT Country FROM Customers;
SELECT * FROM Customers WHERE Country = 'Mexico';
SELECT * FROM Customers WHERE CustomerID = 1;
SELECT * FROM Products WHERE Price = 18;
SELECT * FROM Products WHERE Price > 30;
SELECT * FROM Products WHERE Price < 30;
SELECT * FROM Products WHERE Price >= 30;
SELECT * FROM Products WHERE Price <= 30;
SELECT * FROM Products WHERE Price BETWEEN 50 AND 60;
SELECT * FROM Customers WHERE City LIKE 's%';
SELECT * FROM Customers WHERE CustomerName LIKE '%a';
SELECT * FROM Customers WHERE Country = 'Germany' AND City = 'Berlin';
SELECT * FROM Customers WHERE City = 'Berlin' OR City = 'Stuttgart';
SELECT * FROM Customers WHERE NOT Country = 'Germany';
SELECT * FROM Customers WHERE Country = 'Germany' AND (City = 'Berlin' OR City = 'Stuttgart');
SELECT * FROM Customers WHERE NOT Country = 'Germany' AND NOT Country = 'USA';
SELECT * FROM Customers ORDER BY Country;
SELECT * FROM Customers ORDER BY Country DESC;
SELECT * FROM Customers ORDER BY Country, CustomerName;
SELECT * FROM Customers ORDER BY CustomerName DESC, Country ASC;
SELECT CustomerName FROM Customers ORDER BY CustomerName DESC;
SELECT COUNT(DISTINCT Country) FROM Customers;









