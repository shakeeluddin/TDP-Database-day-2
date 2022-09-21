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
item_name VARCHAR(100)NOT NULL,
course_type VARCHAR(100) NOT NULL,
Price_item DECIMAL NOT NULL,
PRIMARY KEY (item_number));
DROP TABLE items;
SHOW TABLES;
INSERT INTO customers(customer_name, phone_number) VALUES ("Shakeel","12345678912");
SELECT * FROM customers;
INSERT INTO customers(customer_name,phone_number) VALUES ("uddin","9876543212");
SELECT * FROM customers;
INSERT INTO customers(customer_name,phone_number) VALUES ("Adam","34567125679");
SELECT * FROM customers;
INSERT INTO customers(customer_name,phone_number) VALUES ("Zak", "84629539571");
SELECT * FROM customers;
INSERT INTO customers(customer_name,phone_number) VALUES ("Faaris","34975902847"); 
SELECT * FROM customers;
INSERT INTO items(item_name,course_type,price_item) VALUES ("Milk Cake", "Dessert", "3.99");
SELECT * FROM items;
INSERT INTO items(item_name,course_type,price_item) VALUES ("Pasta","mains","5");
SELECT * FROM items;
INSERT INTO items(item_name,course_type, price_item) VALUES ("Rice", "Mains","10");
SELECT * FROM items;
INSERT INTO items(item_name,course_type,price_item) VALUES ("Lamb chops", "Mains", "20");
SELECT * FROM items;
INSERT INTO items(item_name,course_type,price_item) VALUES ("Cake", "dessert", "5");
SELECT * FROM items;
UPDATE items SET item_name="cake",price_item="10" WHERE item_number=1;
SELECT * FROM items;
DELETE FROM items WHERE item_number=5; 
SELECT * FROM items;
INSERT INTO items(item_name,course_type,price_item) VALUES ("Yoghurt", "dessert", "6");
SELECT * FROM items;
CREATE TABLE orders(
o_id INT UNIQUE NOT NULL AUTO_INCREMENT,
customer_id INT NOT NULL,
total_price DECIMAL (6,2),
PRIMARY KEY (o_id),
FOREIGN KEY (customer_id) references customers (customer_id));

CREATE TABLE order_items(
o_id INT UNIQUE NOT NULL AUTO_INCREMENT,
order_id INT NOT NULL,
item_number INT NOT NULL,
quantity INT,
PRIMARY KEY (o_id),
FOREIGN KEY (order_id) references orders (o_id),
FOREIGN KEY (item_number) references items (item_number));

SHOW TABLES;



