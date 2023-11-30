WITH UserInput AS (
    SELECT 1 AS SelectedStudentID
)
SELECT student.student_id AS "student ID", student.first_name AS "First name", student.last_name AS "Last name", COUNT(mark.value) AS "Submitted Midterms/Exams"
FROM student
LEFT JOIN mark ON student.student_id = mark.student_id
WHERE student.student_id = (SELECT SelectedStudentID FROM UserInput)
GROUP BY student.student_id;
