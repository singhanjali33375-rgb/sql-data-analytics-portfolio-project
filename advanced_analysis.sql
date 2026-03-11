-- top 10 customers
SELECT customer_id,
SUM(price * quantity) AS total_spent
FROM sales
GROUP BY customer_id
ORDER BY total_spent DESC
LIMIT 10;

-- monthly sales trend
SELECT
DATE_TRUNC('month', order_date) AS month,
SUM(price * quantity) AS revenue
FROM sales
GROUP BY month
ORDER BY month;
