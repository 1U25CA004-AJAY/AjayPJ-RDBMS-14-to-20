USE CollegeDB;

DROP PROCEDURE IF EXISTS InsertStudent;

DELIMITER //

CREATE PROCEDURE InsertStudent(
    IN p_student_id INT,
    IN p_student_name VARCHAR(50),
    IN p_department_id INT
)
BEGIN
    INSERT INTO Student
        (StudentID, StudentName, DepartmentID)
    VALUES
        (p_student_id, p_student_name, p_department_id);
END //

DELIMITER ;

CALL InsertStudent(105, 'Kavin', 1);

SELECT * FROM Student;