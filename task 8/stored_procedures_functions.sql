
-- Use existing SchoolDB database
USE SchoolDB;

-- Drop procedure and function if they already exist
DROP PROCEDURE IF EXISTS GetStudentMarks;
DROP FUNCTION IF EXISTS GetGradeStatus;

-- Create a stored procedure to retrieve marks for a given student_id
DELIMITER //
CREATE PROCEDURE GetStudentMarks(IN stu_id INT)
BEGIN
    SELECT s.name, m.subject, m.marks
    FROM Students s
    JOIN Marks m ON s.student_id = m.student_id
    WHERE s.student_id = stu_id;
END //
DELIMITER ;

-- Create a function to return grade status based on average marks
DELIMITER //
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
END //
DELIMITER ;

-- Example usage
-- CALL GetStudentMarks(1);
-- SELECT name, GetGradeStatus(AVG(marks)) AS grade_status FROM Students s JOIN Marks m ON s.student_id = m.student_id GROUP BY s.name;
