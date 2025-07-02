
# Task 6: Subqueries and Nested Queries

## ✅ Objective
Use subqueries within `SELECT`, `WHERE`, and `FROM` clauses to implement complex and efficient SQL queries.

## 🧰 Tools
- DB Browser for SQLite
- MySQL Workbench

## 📦 Deliverables
- SQL file or queries using nested logic
- Demonstration of scalar and correlated subqueries
- Use of subqueries inside `IN`, `EXISTS`, and `=`

---

## 💡 Hints/Mini Guide

1. Use **scalar subqueries** (returning single values) in the `SELECT` clause.
2. Use **correlated subqueries** (where inner query refers to outer query) in `WHERE` with `EXISTS`, `IN`, and comparison operators.
3. Write nested subqueries inside `FROM` clauses to treat them like virtual tables.

---

## 🧪 Sample Queries

### 1. Scalar Subquery in SELECT
```sql
SELECT name,
       (SELECT COUNT(*) FROM employees e2 WHERE e2.department_id = e1.department_id) AS dept_count
FROM employees e1;
```

### 2. Subquery with IN
```sql
SELECT name
FROM employees
WHERE department_id IN (
    SELECT department_id
    FROM employees
    GROUP BY department_id
    HAVING COUNT(*) >= 3
);
```

### 3. Correlated Subquery with EXISTS
```sql
SELECT name
FROM departments d
WHERE EXISTS (
    SELECT 1
    FROM employees e
    WHERE e.department_id = d.id AND e.salary > 50000
);
```

### 4. Subquery in FROM
```sql
SELECT department_id, avg_salary
FROM (
    SELECT department_id, AVG(salary) AS avg_salary
    FROM employees
    GROUP BY department_id
) AS dept_avg;
```

---

## 🎯 Outcome
Gain advanced SQL query logic skills by mastering subqueries and nested logic for complex database operations.
