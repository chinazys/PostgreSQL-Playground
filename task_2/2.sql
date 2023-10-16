SELECT Course.Name AS "Course", COALESCE(COUNT(Deadline.DeadlineID), 0) AS "Number Of Midterms"
FROM Course
LEFT JOIN Deadline ON Course.CourseID = Deadline.CourseID AND Deadline.Type = 1
GROUP BY Course.CourseID;
