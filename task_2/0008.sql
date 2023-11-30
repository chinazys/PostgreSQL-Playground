WITH UserInput AS (
    SELECT 1 AS SelectedCourseID
)
SELECT course.name AS "course", COALESCE(AVG(mark.value), 0) AS "Average mark"
FROM course
LEFT JOIN deadline ON course.course_id = deadline.course_id
LEFT JOIN mark ON deadline.deadline_id = mark.deadline_id
WHERE course.course_id = (SELECT SelectedCourseID FROM UserInput)
GROUP BY course.course_id;
