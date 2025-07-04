
# Task 7: Creating Views

## 🏁 Objective
Learn how to create and use SQL views to simplify complex queries and enhance data abstraction and security.

## 🛠️ Tools
- **DB Browser for SQLite**
- **MySQL Workbench**

## 📄 Deliverables
- View definitions
- Usage examples of the created views

---

## 🔍 Description

This task demonstrates the creation of a SQL `VIEW` using a complex `SELECT` query. We simulate a school database with `Students` and `Marks` tables, then create a view named `StudentAverageMarks` that calculates the average marks of each student.

---

## 🧩 View Logic

```sql
CREATE VIEW StudentAverageMarks AS
SELECT 
    s.student_id,
    s.name,
    s.grade,
    ROUND(AVG(m.marks), 2) AS average_marks
FROM 
    Students s
JOIN 
    Marks m ON s.student_id = m.student_id
GROUP BY 
    s.student_id, s.name, s.grade;
```

This view:
- Joins `Students` and `Marks`
- Computes average marks for each student
- Provides a simplified and reusable logic for querying

---

## 🔐 Benefits of Using Views

- **Abstraction**: Users query the view without knowing the underlying table joins.
- **Security**: Restrict access to sensitive columns by exposing only necessary fields via views.
- **Reusability**: Encapsulates complex logic in a single reference point.

---

## ✅ Outcome

> Understand reusable SQL logic through views and how they help in abstraction and security.
