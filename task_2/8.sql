WITH UserInput AS (
    SELECT 1 AS SelectedCourseID
)
SELECT Course.Name AS "Course", COALESCE(AVG(Mark.Value), 0) AS "Average Mark"
FROM Course
LEFT JOIN Deadline ON Course.CourseID = Deadline.CourseID
LEFT JOIN Mark ON Deadline.DeadlineID = Mark.DeadlineID
WHERE Course.CourseID = (SELECT SelectedCourseID FROM UserInput)
GROUP BY Course.CourseID;