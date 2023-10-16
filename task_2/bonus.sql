SELECT Student.StudentID AS "Student ID", Student.FirstName AS "First Name", Student.LastName AS "Last Name", (SELECT COUNT(*) FROM Deadline) - COUNT(Deadline.DeadlineID) AS "Pending Midterms/Exams"
FROM Student
LEFT JOIN Mark ON Student.StudentID = Mark.StudentID
LEFT JOIN Deadline ON Mark.DeadlineID = Deadline.DeadlineID
GROUP BY Student.StudentID;