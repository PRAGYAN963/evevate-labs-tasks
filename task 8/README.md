
# Task 8: Stored Procedures and Functions

## 🏁 Objective
Learn how to create and use stored procedures and functions in SQL to modularize logic and promote code reuse.

## 🛠️ Tools
- **DB Browser for SQLite**
- **MySQL Workbench**

## 📄 Deliverables
- One stored procedure
- One SQL function

---

## 📘 Description

This task demonstrates how to define reusable SQL blocks using:
- `CREATE PROCEDURE`: A stored procedure that takes a student ID as input and returns all their marks.
- `CREATE FUNCTION`: A function that accepts average marks and returns a performance grade.

---

## 🔢 Stored Procedure Example

```sql
CREATE PROCEDURE GetStudentMarks(IN stu_id INT)
BEGIN
    SELECT s.name, m.subject, m.marks
    FROM Students s
    JOIN Marks m ON s.student_id = m.student_id
    WHERE s.student_id = stu_id;
END;
```

### Usage:

```sql
CALL GetStudentMarks(1);
```

---

## 🧮 Function Example

```sql
CREATE FUNCTION GetGradeStatus(avg_marks DECIMAL(5,2))
RETURNS VARCHAR(20)
DETERMINISTIC
BEGIN
    DECLARE status VARCHAR(20);
    IF avg_marks >= 90 THEN
        SET status = 'Excellent';
    ELSEIF avg_marks >= 75 THEN
        SET status = 'Good';
    ELSEIF avg_marks >= 50 THEN
        SET status = 'Average';
    ELSE
        SET status = 'Poor';
    END IF;
    RETURN status;
END;
```

### Usage:

```sql
SELECT name, GetGradeStatus(AVG(marks)) AS grade_status
FROM Students s
JOIN Marks m ON s.student_id = m.student_id
GROUP BY s.name;
```

---

## ✅ Outcome

> Ability to modularize SQL logic using stored procedures and functions with parameters and conditional logic.
