WITH UserInput AS (
    SELECT 5 AS SelectedStudentID
)
SELECT course.name AS "course", deadline.date AS "Expired deadline date", deadline.deadline_id AS "Pending deadline ID"
FROM deadline
LEFT JOIN mark ON deadline.deadline_id = mark.deadline_id AND mark.student_id = (SELECT SelectedStudentID FROM UserInput)
LEFT JOIN course ON deadline.course_id = course.course_id
WHERE mark.value IS NULL AND deadline.date < CURRENT_DATE;
