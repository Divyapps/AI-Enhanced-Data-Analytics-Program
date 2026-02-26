CREATE DATABASE AirlineDB;
USE AirlineDB;
CREATE TABLE Aircraft (
    aircraft_id INT PRIMARY KEY,
    model VARCHAR(50),
    capacity INT
);
INSERT INTO Aircraft VALUES
(1, 'Airbus A320', 180),
(2, 'Boeing 737', 160),
(3, 'Airbus A321', 220);
CREATE TABLE Flights (
    flight_id INT PRIMARY KEY,
    flight_no VARCHAR(10),
    source VARCHAR(50),
    destination VARCHAR(50),
    departure_time DATETIME,
    aircraft_id INT,
    FOREIGN KEY (aircraft_id) REFERENCES Aircraft(aircraft_id)
);
INSERT INTO Flights VALUES
(101, 'AI101', 'Chennai', 'Delhi', '2026-02-10 09:00:00', 1),
(102, 'AI202', 'Mumbai', 'Bangalore', '2026-02-11 14:30:00', 2),
(103, 'AI303', 'Delhi', 'Kolkata', '2026-02-12 18:45:00', 3);
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
CREATE TABLE Bookings (
    booking_id INT PRIMARY KEY,
    passenger_id INT,
    flight_id INT,
    booking_date DATE,
    seat_no VARCHAR(5),
    FOREIGN KEY (passenger_id) REFERENCES Passengers(passenger_id),
    FOREIGN KEY (flight_id) REFERENCES Flights(flight_id)
);
INSERT INTO Bookings VALUES
(1001, 1, 101, '2026-02-01', '12A'),
(1002, 2, 102, '2026-02-02', '14C'),
(1003, 3, 103, '2026-02-03', '10B');
#1
SELECT p.passenger_name, f.flight_no, f.source, f.destination
FROM Bookings b
JOIN Passengers p ON b.passenger_id = p.passenger_id
JOIN Flights f ON b.flight_id = f.flight_id;
#2
SELECT * FROM Flights;
#3
SELECT * FROM Flights
WHERE source = 'Chennai';
#4
SELECT passenger_name, age, gender
FROM Passengers;
#5
SELECT flight_no, source, departure_time
FROM Flights
WHERE destination = 'Delhi';
#6
SELECT COUNT(*) AS total_passengers
FROM Passengers;
#7
SELECT source, COUNT(*) AS total_flights
FROM Flights
GROUP BY source;
#8
SELECT model, capacity
FROM Aircraft
WHERE capacity > 170;
#9
SELECT flight_no
FROM Flights
WHERE aircraft_id = (
    SELECT aircraft_id
    FROM Aircraft
    ORDER BY capacity DESC
    LIMIT 1
);
#10
SELECT passenger_name, age
FROM Passengers
WHERE age > (
    SELECT AVG(age)
    FROM Passengers
);
#11
SELECT flight_no
FROM Flights f
WHERE EXISTS (
    SELECT 1
    FROM Bookings b
    WHERE b.flight_id = f.flight_id
);
#12
SELECT flight_id, COUNT(*) AS total_bookings
FROM Bookings
GROUP BY flight_id
HAVING COUNT(*) > 1;
#13.
SELECT passenger_id, COUNT(*) AS booking_count
FROM Bookings
GROUP BY passenger_id
HAVING COUNT(*) > 1;
#14
SELECT *
FROM Bookings
WHERE MONTH(booking_date) = 2
  AND YEAR(booking_date) = 2026;

  #15.
  UPDATE Passengers
SET age = 26
WHERE passenger_name = 'Divya Rao';
#16.
DELETE FROM Bookings
WHERE booking_id = 1003;
#17.
SELECT passenger_name,
CASE
    WHEN age < 25 THEN 'Young'
    WHEN age BETWEEN 25 AND 40 THEN 'Adult'
    ELSE 'Senior'
END AS age_group
FROM Passengers;
#18.
SELECT flight_no, departure_time,
RANK() OVER (ORDER BY departure_time) AS flight_rank
FROM Flights;

















