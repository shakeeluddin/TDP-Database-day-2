CREATE DATABASE dbday2;
USE dbday2;
CREATE TABLE customers(
customer_id INT UNIQUE NOT NULL AUTO_INCREMENT,
Customer_name VARCHAR(100) NOT NULL,
Phone_number VARCHAR(11) NOT NULL,
PRIMARY KEY (customer_id));
SHOW TABLES;
DESCRIBE CUSTOMERS;
CREATE TABLE items(
item_number INT UNIQUE NOT NULL AUTO_INCREMENT,
iten_name VARCHAR(100)NOT NULL,
course_type VARCHAR(100) NOT NULL,
Price_item DECIMAL NOT NULL,
PRIMARY KEY (item_number));
SHOW TABLES;
