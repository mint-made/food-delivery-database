CREATE TABLE users (
	id INT AUTO_INCREMENT,
	username VARCHAR(40),
    password CHAR(64),
	first_name VARCHAR(60),
	last_name VARCHAR(60),
	email VARCHAR(60),
	phone VARCHAR(15),
    bank_details VARCHAR(60),
	PRIMARY KEY(id) 
);

CREATE TABLE user_role (
	user_id INT,
    role_id INT    
);

CREATE TABLE roles (
	id INT AUTO_INCREMENT,
	name VARCHAR(60),
	PRIMARY KEY(id) 
);

CREATE TABLE orders (
	id INT AUTO_INCREMENT,
    customer_id INT,
    address_id INT,
    driver_id INT,
    total_price DECIMAL (6, 2),
    date DATE,
    status VARCHAR(100),
    arrival_time TIME,
	PRIMARY KEY(id) 
);

CREATE TABLE order_details (
	order_id INT,
    item_id INT,
    quantity INT,
    sale_price DECIMAL (6, 2)
);

CREATE TABLE addresses (
	id INT AUTO_INCREMENT,
    user_id INT,
    first_line VARCHAR(60),
    second_line VARCHAR(60),
    city VARCHAR(60),
    post_code VARCHAR(15),   
	PRIMARY KEY(id) 
);

CREATE TABLE menu_items (
	id INT AUTO_INCREMENT,
    name VARCHAR(60),
    type VARCHAR(60),
    current_price DECIMAL (6, 2),
	PRIMARY KEY(id) 
);

CREATE TABLE menu_schedule (
	date DATE,
    main_1 INT,
    main_2 INT,
    dessert_1 INT,
    dessert_2 INT, 
    PRIMARY KEY(date) 
);

CREATE TABLE shopping_basket (
	customer_id INT,
    item_id INT,
    quantity INT,
    sale_price DECIMAL (6, 2)
);