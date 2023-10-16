WITH UserInput AS (
    SELECT 1 AS SelectedDeadlineID
)
SELECT Course.Name AS "Course", Deadline.Date AS "Deadline Date", COALESCE(AVG(Mark.Value), 0) AS "Average Mark"
FROM Deadline
LEFT JOIN Mark ON Deadline.DeadlineID = Mark.DeadlineID
LEFT JOIN Course ON Deadline.CourseID = Course.CourseID
WHERE Deadline.DeadlineID = (SELECT SelectedDeadlineID FROM UserInput)
GROUP BY Deadline.DeadlineID, Course.CourseID;