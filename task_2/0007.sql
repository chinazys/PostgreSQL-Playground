WITH UserInput AS (
    SELECT 1 AS SelectedDeadlineID
)
SELECT course.name AS "course", deadline.date AS "deadline date", COALESCE(AVG(mark.value), 0) AS "Average mark"
FROM deadline
LEFT JOIN mark ON deadline.deadline_id = mark.deadline_id
LEFT JOIN course ON deadline.course_id = course.course_id
WHERE deadline.deadline_id = (SELECT SelectedDeadlineID FROM UserInput)
GROUP BY deadline.deadline_id, course.course_id;
