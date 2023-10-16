WITH UserInput AS (
    SELECT 1 AS SelectedStudentID
)
SELECT Student.StudentID AS "Student ID", Student.FirstName AS "First Name", Student.LastName AS "Last Name", COUNT(Mark.Value) AS "Submitted Midterms/Exams"
FROM Student
LEFT JOIN Mark ON Student.StudentID = Mark.StudentID
WHERE Student.StudentID = (SELECT SelectedStudentID FROM UserInput)
GROUP BY Student.StudentID;