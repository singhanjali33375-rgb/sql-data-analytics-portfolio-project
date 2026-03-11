-- total revenue
SELECT SUM(price * quantity) AS total_revenue
FROM sales;

-- total orders
SELECT COUNT(order_id) FROM sales;

-- category wise sales
SELECT category,
SUM(price * quantity) AS revenue
FROM sales
GROUP BY category;
