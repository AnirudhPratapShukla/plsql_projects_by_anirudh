-- Student Grade Calculator by Anirudh Pratap Shukla

-- Table for Indian students' marks and grades
CREATE TABLE anirudh_students (
    roll_no NUMBER PRIMARY KEY,
    name VARCHAR2(100),
    marks NUMBER,
    grade CHAR(2)
);

-- Insert Indian students
INSERT INTO anirudh_students VALUES (1, 'Amit Verma', 92, NULL);
INSERT INTO anirudh_students VALUES (2, 'Neha Singh', 78, NULL);
INSERT INTO anirudh_students VALUES (3, 'Vikram Gupta', 85, NULL);

-- Procedure to calculate grade
CREATE OR REPLACE PROCEDURE anirudh_calc_grade(roll NUMBER) IS
    m NUMBER;
    g CHAR(2);
    student_name VARCHAR2(100);
BEGIN
    SELECT marks, name INTO m, student_name FROM anirudh_students WHERE roll_no = roll;
    IF m >= 90 THEN g := 'A+';
    ELSIF m >= 80 THEN g := 'A';
    ELSIF m >= 70 THEN g := 'B';
    ELSE g := 'C';
    END IF;
    UPDATE anirudh_students SET grade = g WHERE roll_no = roll;
    DBMS_OUTPUT.PUT_LINE('Student: ' || student_name || ' | Marks: ' || m || ' | Grade assigned: ' || g);
END;
/
