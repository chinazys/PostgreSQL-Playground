SELECT Course.Name AS "Course w/o Midterms"
FROM Course
LEFT JOIN Deadline ON Course.CourseID = Deadline.CourseID AND Deadline.Type = 1
WHERE Deadline.DeadlineID IS NULL;