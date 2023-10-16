WITH UserInput AS (
    SELECT 5 AS SelectedStudentID
)
SELECT Course.CourseID AS "Course ID", Course.Name AS "Course Name", COUNT(Mark.Value) AS "Submitted Midterms"
FROM Course
LEFT JOIN Deadline ON Course.CourseID = Deadline.CourseID AND Deadline.Type = 1
LEFT JOIN Mark ON Mark.DeadlineID = Deadline.DeadlineID AND Mark.StudentID = (SELECT SelectedStudentID FROM UserInput)
GROUP BY Course.CourseID;