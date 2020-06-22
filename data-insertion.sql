INSERT INTO users (username, first_name, last_name, email, phone) VALUES 
	("joe47", "Zak", "Baker", "joe47@gmail.com", "07541778661"), 
	("jane556", "Jane", "Harris", "emily556@gmail.com", "07543278661"),
    ("drivertom33", "Tom", "Kupai", "tkupai@gmail.com", "07786640433");

INSERT INTO user_role (user_id, role_id) VALUES (1, 1), (2, 1), (3, 2);
INSERT INTO roles (name) VALUES ("customer"), ("driver");
INSERT INTO addresses (user_id, first_line, second_line, city, post_code) VALUES
	(1, "55  Wartnaby Road", "Shepton", "Bramly", "YO7 2QF"),
    (2, "53  Guildford Rd", "EAST HALTON", "Helmsford", "DN40 3SY"),
	(3, "97 Brailsford St", "Rusholme", "Manchester", "M14 5TA"),
    (1, "47 Steeple Road", "Shepton", "Bramly", "YO8 26Q");
    
INSERT INTO menu_items (name, type, current_price) VALUES
	("Bean and squash lasagne", "main", 8.90),
    ("Cheddar cheese and avocado salad", "main", 9.90),
    ("Bean and mushroom curry", "main", 11.90),
    ("Tomato and mushroom pasta", "main", 10.90),
    ("Squash and chard korma", "main", 9.50),
    
    ("Milk chocolate and lemon mousse", "dessert", 5.90),
    ("Chocolate and cinnamon muffins", "dessert", 4.90),
    ("Chestnut and apple cake", "dessert", 5.70),
    ("Pear and mascarpone crepes", "dessert", 6.70),
    ("Lemon and blackcurrant cake", "dessert", 4.70);
    
INSERT INTO menu_schedule (date, main_1, main_2, dessert_1, dessert_2) VALUES
	("2020-02-20", 1, 3, 6, 8),
    ("2020-02-21", 2, 4, 7, 9),
    ("2020-02-22", 5, 1, 10, 8),
    ("2020-02-23", 4, 3, 6, 8),
    ("2020-02-24", 2, 1, 10, 6),
    ("2020-02-25", 5, 3, 7, 8),
    ("2020-02-26", 2, 4, 10, 8),
    ("2020-02-27", 1, 3, 6, 7),
    ("2020-02-28", 5, 2, 10, 9),
    ("2020-02-29", 3, 4, 7, 6),
    ("2020-03-01", 1, 2, 9, 8),
    ("2020-03-02", 5, 4, 10, 8);
    
INSERT INTO orders (customer_id, address_id, driver_id, total_price, date, status, arrival_time) VALUES
	(1, 1, 3, 32.40, "2020-02-20", "completed", "18:44:41"),
    (1, 4, 3, 9.90, "2020-02-24", "completed", "20:14:51"),
	(2, 2, 3, 20.80, "2020-02-26", "in-transit, driver collected order at 21:17:44", "21:25:00");
    
INSERT INTO order_details (order_id, item_id, quantity, sale_price) VALUES
	(1, 1, 2, 8.90),
    (1, 3, 1, 11.90),
    (1, 6, 1, 5.90),
    (1, 8, 1, 5.70),
    (2, 2, 1, 9.90),
    (3, 2, 1, 9.90),
    (3, 4, 1, 9.90);
    
INSERT INTO shopping_basket (customer_id, item_id, quantity, sale_price) VALUES
	(1, 3, 2, 11.90),
    (1, 4, 1, 10.90),
    (1, 8, 2, 5.70);