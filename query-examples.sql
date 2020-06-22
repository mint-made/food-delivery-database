/*user details with roles*/
SELECT users.id, users.username, users.first_name, users.last_name, users.email, 
users.phone, roles.name user_role FROM users
JOIN user_role ON users.id = user_role.user_id
JOIN roles ON user_role.role_id = roles.id;

/*user addresses with user names*/
SELECT users.first_name, users.last_name, addresses.first_line, addresses.second_line, addresses.city, addresses.post_code FROM addresses
JOIN users ON addresses.user_id = users.id;

/*menuitem choices on different dates*/
SELECT menu_schedule.date, main1.name, main2.name, dessert1.name, dessert2.name FROM menu_schedule
JOIN menu_items main1 ON menu_schedule.main_1 = main1.id
JOIN menu_items main2 ON menu_schedule.main_2 = main2.id
JOIN menu_items dessert1 ON menu_schedule.dessert_1 = dessert1.id
JOIN menu_items dessert2 ON menu_schedule.dessert_2 = dessert2.id;

/*get order details of a particular order*/
SELECT order_details.order_id, menu_items.name, order_details.quantity FROM order_details
JOIN menu_items ON order_details.item_id = menu_items.id
WHERE order_details.order_id = 1;

/*select shopping cart*/
SELECT shopping_basket.customer_id, menu_items.name, shopping_basket.quantity, shopping_basket.sale_price FROM shopping_basket
JOIN menu_items ON shopping_basket.item_id = menu_items.id;