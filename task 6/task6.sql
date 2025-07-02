
-- TABLE CREATION

CREATE TABLE departments (
    id INT PRIMARY KEY,
    name VARCHAR(50)
);

CREATE TABLE employees (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    department_id INT,
    salary INT,
    FOREIGN KEY (department_id) REFERENCES departments(id)
);

-- QUERY 1: Scalar Subquery in SELECT
SELECT 
    name,
    (SELECT COUNT(*) 
     FROM employees e2 
     WHERE e2.department_id = e1.department_id) AS dept_count
FROM employees e1;

-- QUERY 2: Subquery with IN
SELECT name 
FROM employees 
WHERE department_id IN (
    SELECT department_id 
    FROM employees 
    GROUP BY department_id 
    HAVING COUNT(*) >= 3
);

-- QUERY 3: Correlated Subquery with EXISTS
SELECT name 
FROM departments d 
WHERE EXISTS (
    SELECT 1 
    FROM employees e 
    WHERE e.department_id = d.id AND e.salary > 50000
);

-- QUERY 4: Subquery in FROM
SELECT department_id, avg_salary
FROM (
    SELECT department_id, AVG(salary) AS avg_salary
    FROM employees
    GROUP BY department_id
) AS dept_avg;
