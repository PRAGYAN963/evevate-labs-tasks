
# Task 2: Data Insertion and Handling Nulls

## 📝 Objective
Practice inserting, updating, and deleting data in a relational database while properly handling NULL values and ensuring data consistency.

---

## 🧰 Tools Used
- [DB Fiddle](https://www.db-fiddle.com/)  
- SQLiteStudio  
- MySQL Workbench (optional)

---

## 📂 Deliverables
- A single `.sql` file containing:
  - `INSERT INTO` statements for adding records
  - `UPDATE` statements with `WHERE` conditions
  - `DELETE` statements with safe filtering

---

## 🧠 Task Description

This task demonstrates:
- How to insert records (complete and partial).
- How to manage missing values using `NULL` or `DEFAULT`.
- How to safely update and delete rows with conditions.

---

## 🛠️ SQL Features Used

- `CREATE TABLE` for schema definition
- `INSERT INTO` with/without all column values
- Use of `NULL` and `DEFAULT` for missing data
- `UPDATE ... WHERE` for modifying specific records
- `DELETE ... WHERE` for safely removing records

---

## 📌 Important Notes

- Always use a `WHERE` clause in `UPDATE` and `DELETE` to avoid modifying/deleting all rows.
- Handle missing fields using:
  - `NULL` when values are unknown
  - `DEFAULT` values for fields like phone numbers or statuses
- In MySQL Workbench, disable **Safe Updates Mode** if you encounter errors while deleting or updating:
  ```sql
  SET SQL_SAFE_UPDATES = 0;
  ```

---

## ✅ Outcome

A clean, consistent, and partially populated database table demonstrating:
- Proper handling of missing data
- Correct application of insert, update, and delete logic
- Safe and precise data operations using SQL

---

## 📎 Sample Table: `Customers`

| Column      | Data Type | Description                     |
|-------------|------------|---------------------------------|
| CustomerID  | INTEGER    | Primary Key                     |
| Name        | TEXT       | Customer name (Not Null)        |
| Email       | TEXT       | Email address (nullable)        |
| Phone       | TEXT       | Defaults to 'Not Provided'      |
| Age         | INTEGER    | Age (nullable)                  |

---

## 👨‍💻 Author
**Pragyan Shrivastava**  
*Prepared for database practice & SQL skills enhancement.*
