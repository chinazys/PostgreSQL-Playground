WITH UserInput AS (
    SELECT 5 AS SelectedStudentID
)
SELECT Course.Name AS "Course", Deadline.Date AS "Expired Deadline Date", Deadline.DeadlineID AS "Pending Deadline ID"
FROM Deadline
LEFT JOIN Mark ON Deadline.DeadlineID = Mark.DeadlineID AND Mark.StudentID = (SELECT SelectedStudentID FROM UserInput)
LEFT JOIN Course ON Deadline.CourseID = Course.CourseID
WHERE Mark.Value IS NULL AND Deadline.Date < CURRENT_DATE;