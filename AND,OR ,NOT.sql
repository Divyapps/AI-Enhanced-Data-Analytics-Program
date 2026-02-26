drop database facebookdb;
CREATE DATABASE facebookdb;
USE facebookdb;
CREATE TABLE users (
    user_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50),
    city VARCHAR(50),
    age INT,
    email VARCHAR(100)
);
CREATE TABLE posts (
    post_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT,
    content VARCHAR(200),
    likes INT,
    date_posted DATE,
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);
CREATE TABLE friends (
    id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT,
    friend_id INT,
    FOREIGN KEY (user_id) REFERENCES users(user_id),
    FOREIGN KEY (friend_id) REFERENCES users(user_id)
);
INSERT INTO users (name, city, age, email)
VALUES
('Ravi', 'Delhi', 25, 'ravi@gmail.com'),
('Priya', 'Chennai', 27, 'priya@yahoo.com'),
('Amit', 'Mumbai', 22, 'amit@outlook.com'),
('Neha', 'Delhi', NULL, 'neha@gmail.com'),
('Kiran', 'Bangalore', 24, NULL);
INSERT INTO posts (user_id, content, likes, date_posted)
VALUES
(1, 'Good Morning Everyone!', 120, '2025-10-28'),
(2, 'Learning MySQL Today!', 80, '2025-10-30'),
(3, 'Enjoying in Goa!', 200, '2025-10-29'),
(4, 'New Profile Picture!', 150, '2025-10-31'),
(5, 'Birthday Celebration!', 95, '2025-10-27');
INSERT INTO friends (user_id, friend_id)
VALUES
(1, 2),
(1, 3),
(2, 4),
(3, 5),
(4, 1);
select * from users;
SELECT * FROM users WHERE city = 'Delhi';
SELECT * FROM users WHERE city = 'Delhi' AND age > 23;
SELECT * FROM users WHERE city = 'Delhi' OR city = 'Mumbai';
SELECT * FROM users WHERE NOT city = 'Delhi';
select * from posts;
SELECT likes FROM posts ORDER BY likes DESC;
desc users;
SELECT * FROM users WHERE email IS NULL;
SELECT name, age FROM users WHERE age BETWEEN 23 AND 26;
SELECT * FROM users WHERE city IN ('Delhi', 'Chennai', 'Goa');
