# Task 3: Writing Basic SELECT Queries

## 🧠 Objective
To extract data from one or more tables using SQL SELECT queries and understand how to apply filtering, sorting, and limiting results.

## 🛠️ Tools Used
- DB Browser for SQLite
- MySQL Workbench

## 📦 Deliverables
- SQL script demonstrating usage of:
  - `SELECT`
  - `WHERE`, `AND`, `OR`, `LIKE`, `BETWEEN`
  - `ORDER BY`
  - `LIMIT`

## 📝 Hints / Mini Guide
1. Use `SELECT *` to retrieve all columns, or specify the columns needed.
2. Apply filters using `WHERE` along with logical operators like `AND`, `OR`, `LIKE`, and `BETWEEN`.
3. Sort the results using `ORDER BY`.
4. Use `LIMIT` to restrict the number of returned records.

## 📂 Example Queries

```sql
-- Select all columns
SELECT * FROM customers;

-- Select specific columns
SELECT id, name, email FROM customers;

-- Filter with WHERE
SELECT * FROM orders WHERE status = 'shipped';

-- Filter with AND
SELECT * FROM orders WHERE status = 'shipped' AND total_amount > 1000;

-- Filter with OR
SELECT * FROM products WHERE category = 'electronics' OR category = 'appliances';

-- Pattern match with LIKE
SELECT * FROM customers WHERE name LIKE 'A%';

-- Filter range with BETWEEN
SELECT * FROM orders WHERE order_date BETWEEN '2024-01-01' AND '2024-12-31';

-- Sort results
SELECT * FROM products ORDER BY price DESC;

-- Limit results
SELECT * FROM products ORDER BY price DESC LIMIT 5;
```

## 🎯 Outcome
- Gain a clear understanding of how to retrieve and manipulate data using SQL SELECT queries.
