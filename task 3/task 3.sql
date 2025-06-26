-- Selecting all columns from a table
SELECT * FROM customers;

-- Selecting specific columns
SELECT id, name, email FROM customers;

-- Using WHERE clause
SELECT * FROM orders
WHERE status = 'shipped';

-- Using WHERE with AND
SELECT * FROM orders
WHERE status = 'shipped' AND total_amount > 1000;

-- Using WHERE with OR
SELECT * FROM products
WHERE category = 'electronics' OR category = 'appliances';

-- Using LIKE
SELECT * FROM customers
WHERE name LIKE 'A%';  -- Names starting with A

-- Using BETWEEN
SELECT * FROM orders
WHERE order_date BETWEEN '2024-01-01' AND '2024-12-31';

-- Using ORDER BY
SELECT * FROM products
ORDER BY price DESC;

-- Using LIMIT
SELECT * FROM products
ORDER BY price DESC
LIMIT 5;


