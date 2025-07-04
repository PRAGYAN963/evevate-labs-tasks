
-- Create a sample database and tables
CREATE DATABASE IF NOT EXISTS SchoolDB;
USE SchoolDB;

-- Create Students table
CREATE TABLE IF NOT EXISTS Students (
    student_id INT PRIMARY KEY,
    name VARCHAR(100),
    age INT,
    grade VARCHAR(10)
);

-- Create Marks table
CREATE TABLE IF NOT EXISTS Marks (
    mark_id INT PRIMARY KEY,
    student_id INT,
    subject VARCHAR(100),
    marks INT,
    FOREIGN KEY (student_id) REFERENCES Students(student_id)
);

-- Insert sample data into Students
INSERT INTO Students (student_id, name, age, grade) VALUES
(1, 'Aarav', 15, '10th'),
(2, 'Priya', 16, '11th'),
(3, 'Rohan', 14, '9th');

-- Insert sample data into Marks
INSERT INTO Marks (mark_id, student_id, subject, marks) VALUES
(1, 1, 'Math', 85),
(2, 1, 'Science', 90),
(3, 2, 'Math', 78),
(4, 2, 'Science', 88),
(5, 3, 'Math', 92),
(6, 3, 'Science', 81);

-- Create a VIEW to show student details with their average marks
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

-- Query the view
SELECT * FROM StudentAverageMarks;
