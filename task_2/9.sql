SELECT Student.StudentID AS "Student ID", Student.FirstName AS "First Name", Student.LastName AS "Last Name", AVG(Mark.Value) AS "Average Mark"
FROM Student
LEFT JOIN Mark ON Student.StudentID = Mark.StudentID
GROUP BY Student.StudentID;