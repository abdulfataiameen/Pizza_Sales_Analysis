SELECT * FROM `place pizza`.order_details;

#checking distinct value
SELECT DISTINCT pizza_id FROM order_details;

#date and time
SELECT date, time FROM orders;

#checking pizza name and categories
SELECT name, category FROM pizza_types;

#Select the size, price, and pizza_type_id columns from the pizza table:
SELECT size, price, pizza_type_id FROM pizzas;

#Joining the order_details table with the orders table on the order_id column:
SELECT * FROM order_details
JOIN orders ON order_details.order_id = orders.order_id;

#Joining the pizza table with the pizza_types table on the pizza_type_id column:
SELECT * FROM pizzas
JOIN pizza_types ON pizzas.pizza_type_id = pizza_types.pizza_type_id;

#Counting the number of rows on order_details table
SELECT COUNT(*) FROM order_details;

#counting the number of unique pizza_id in the order_details table: ---to be plotted
SELECT COUNT(DISTINCT pizza_id) FROM order_details;

#Total pizza ordered ----- to be plotted
SELECT SUM(quantity) FROM order_details;

#average pizza price ---to be plotted
SELECT AVG(price) FROM pizzas;

#minimum price (plot top 5 cheapest)
SELECT MIN(price) FROM pizzas;

#Maximum Price (Plot top 5)
SELECT MAX(price) FROM pizzas;

#Find all orders that have a quantity greater than 2 (best sellers)
SELECT * FROM order_details
WHERE quantity > 2;

#Find all pizzas with a size of 'Medium' or 'Large'
SELECT * FROM pizzas
WHERE size IN ('S');

SELECT * FROM pizzas
WHERE size IN ('L');

#delete zero quantities
DELETE FROM order_details
WHERE quantity = 0;

#Total Money made from orders
SELECT SUM(od.quantity * p.price) AS total_money_made
FROM order_details od
JOIN pizzas p ON od.pizza_id = p.pizza_id;





















