drop database my_schema1;
create database my_schema1;
use my_schema1;
CREATE TABLE Customers_New (
  CustomerID INT PRIMARY KEY,
  CustomerName VARCHAR(100),
  ContactName VARCHAR(100),
  Address VARCHAR(150),
  City VARCHAR(50),
  PostalCode VARCHAR(20),
  Country VARCHAR(50)
);
INSERT INTO Customers_New (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES
(1, 'Alfreds Futterkiste', 'Maria Anders', 'Obere Str. 57', 'Berlin', '12209', 'Germany'),
(2, 'Ana Trujillo Emparedados y helados', 'Ana Trujillo', 'Avda. de la Constitución 2222', 'México D.F.', '05021', 'Mexico'),
(3, 'Antonio Moreno Taquería', 'Antonio Moreno', 'Mataderos 2312', 'México D.F.', '05023', 'Mexico'),
(4, 'Around the Horn', 'Thomas Hardy', '120 Hanover Sq.', 'London', 'WA1 1DP', 'UK'),
(5, 'Berglunds snabbköp', 'Christina Berglund', 'Berguvsvägen 8', 'Luleå', 'S-958 22', 'Sweden');
SELECT * FROM Customers_NEW;
SELECT CustomerName, City, Country FROM Customers_NEW;
SELECT Country FROM Customers_NEW;
SELECT COUNT(DISTINCT Country) FROM Customers_NEW;
SELECT * FROM Customers_NEW
WHERE Country = 'Mexico';
SELECT * FROM CUSTOMERS_NEW;
ALTER TABLE Customers_New
ADD Phone VARCHAR(20);
ALTER TABLE Customers_New
ADD DateAdded DATE;
DESC CUSTOMERS_NEW;
ALTER TABLE Customers_New
MODIFY PostalCode VARCHAR(50);
DESC CUSTOMERS_NEW;
ALTER TABLE Customers_New
CHANGE COLUMN ContactName ContactPerson VARCHAR(100);
DESC CUSTOMERS_NEW;
SELECT * FROM CUSTOMERS_NEW;
ALTER TABLE Customers_New
DROP COLUMN Phone;
SELECT * FROM CUSTOMERS_NEW;
UPDATE Customers_New
SET City = 'Hamburg'
WHERE CustomerID = 1;
SELECT * FROM CUSTOMERS_NEW;
UPDATE Customers_New
SET Country = 'U.S'
WHERE City = 'México D.F.';
SELECT * FROM CUSTOMERS_NEW;
UPDATE Customers_New
SET Address = 'New Address 123', City = 'New City', PostalCode = '00001'
WHERE CustomerID = 2;
SELECT * FROM CUSTOMERS_NEW;
DROP DATABASE CUSTOMERS_NEW;












