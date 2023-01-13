SELECT * FROM `place pizza`.final;

-- Number of customers per day
SELECT date, COUNT(DISTINCT order_id) as customers
FROM final
GROUP BY date
ORDER BY date;

-- Number of customers per hour
SELECT time, COUNT(DISTINCT order_id) as customers
FROM final
GROUP BY time
ORDER BY time;

-- Total pizzas per order
SELECT order_id, SUM(quantity) as total_pizzas
FROM final
GROUP BY order_id;

-- Bestselling pizzas
SELECT pizza_name, SUM(quantity) as total_sold
FROM final
GROUP BY name
ORDER BY total_sold DESC;

-- Revenue by year
SELECT  extract(year from date) as year, SUM(price) as revenue
FROM final
GROUP BY year;

-- Revenue by month
SELECT  extract(month from date) as month, SUM(price) as revenue
FROM final
GROUP BY month;


-- Pizzas with least sales
SELECT name, SUM(quantity) as total_sold
FROM final
GROUP BY name
ORDER BY total_sold ASC
LIMIT 5;

-- Pizzas with least orders
SELECT name, COUNT(DISTINCT order_id) as total_orders
FROM final
GROUP BY name
ORDER BY total_orders ASC
LIMIT 5;


-- Total pizzas per order
SELECT order_id, SUM(quantity) as total_pizzas
FROM final
GROUP BY order_id;

-- Bestselling pizzas
SELECT name, SUM(quantity) as total_sold
FROM final
GROUP BY name
ORDER BY total_sold DESC;




-- Revenue by year
SELECT  extract(year from date) as year, SUM(price) as revenue
FROM final
GROUP BY year;

-- Revenue by month
SELECT  extract(month from date) as month, SUM(price) as revenue
FROM final
GROUP BY month;

