# 📄 README: Task - Aggregate Functions and Grouping in SQL

## 🧩 Objective
Use **aggregate functions** and **grouping** to summarize and analyze tabular data.

---

## 🛠️ Tools
- DB Browser for SQLite  
- MySQL Workbench

---

## 📦 Deliverables
SQL queries using:
- `SUM()`
- `COUNT()`
- `AVG()`
- `GROUP BY`
- `HAVING`

---

## 📚 Hints / Mini Guide

1. Apply aggregate functions on numeric columns.
2. Use `GROUP BY` to categorize.
3. Filter groups using `HAVING`.

---

## 📊 Sample Schema

Assume a table `orders`:

```sql
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    product VARCHAR(100),
    quantity INT,
    price DECIMAL(10,2),
    order_date DATE
);
```

---

## 🔢 Sample Data

```sql
INSERT INTO orders (order_id, customer_name, product, quantity, price, order_date) VALUES
(1, 'Alice', 'Laptop', 1, 60000, '2025-06-01'),
(2, 'Bob', 'Mobile', 2, 15000, '2025-06-02'),
(3, 'Alice', 'Keyboard', 3, 2000, '2025-06-03'),
(4, 'Charlie', 'Mouse', 5, 800, '2025-06-04'),
(5, 'Bob', 'Laptop', 1, 60000, '2025-06-05');
```

---

## 🧮 SQL Queries

### 1. Total quantity ordered by each customer
```sql
SELECT customer_name, SUM(quantity) AS total_quantity
FROM orders
GROUP BY customer_name;
```

### 2. Count of orders per customer
```sql
SELECT customer_name, COUNT(order_id) AS total_orders
FROM orders
GROUP BY customer_name;
```

### 3. Average price per product
```sql
SELECT product, AVG(price) AS average_price
FROM orders
GROUP BY product;
```

### 4. Customers who ordered more than 3 items in total
```sql
SELECT customer_name, SUM(quantity) AS total_quantity
FROM orders
GROUP BY customer_name
HAVING SUM(quantity) > 3;
```

---

## ✅ Outcome
- Ability to **summarize** and **analyze** tabular data using aggregate functions and grouping logic in SQL.
