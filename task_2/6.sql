WITH UserInput AS (
    SELECT 3 AS SelectedStudentID
)
SELECT Course.Name AS "Course", COUNT(Deadline.DeadlineID) AS "Pending Deadline ID"
FROM Deadline
LEFT JOIN Mark ON Deadline.DeadlineID = Mark.DeadlineID AND Mark.StudentID = (SELECT SelectedStudentID FROM UserInput)
LEFT JOIN Course ON Deadline.CourseID = Course.CourseID
WHERE Mark.Value IS NULL AND Deadline.Date > CURRENT_DATE
GROUP BY Course.CourseID;