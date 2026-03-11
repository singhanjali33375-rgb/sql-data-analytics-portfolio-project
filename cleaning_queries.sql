-- remove null values
SELECT * FROM sales
WHERE price IS NULL;

-- update missing price
UPDATE sales
SET price = 0
WHERE price IS NULL;

-- remove duplicate records
DELETE FROM sales
WHERE order_id IN (
SELECT order_id FROM (
SELECT order_id,
ROW_NUMBER() OVER(PARTITION BY order_id) AS rn
FROM sales
) t
WHERE rn > 1
);
