CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    product VARCHAR(100),
    quantity INT,
    price DECIMAL(10,2),
    order_date DATE
);

INSERT INTO orders (order_id, customer_name, product, quantity, price, order_date) VALUES
(1, 'Pragyan', 'Laptop', 1, 60000, '2025-06-01'),
(2, 'Sarvagya', 'Mobile', 2, 15000, '2025-06-02'),
(3, 'Pragyan', 'Keyboard', 3, 2000, '2025-06-03'),
(4, 'Rajiv', 'Mouse', 5, 800, '2025-06-04'),
(5, 'Sarvagya', 'Laptop', 1, 60000, '2025-06-05');

SELECT customer_name, SUM(quantity) AS total_quantity
FROM orders
GROUP BY customer_name;

SELECT customer_name, COUNT(order_id) AS total_orders
FROM orders
GROUP BY customer_name;

SELECT product, AVG(price) AS average_price
FROM orders
GROUP BY product;

SELECT customer_name, SUM(quantity) AS total_quantity
FROM orders
GROUP BY customer_name
HAVING SUM(quantity) > 3;
