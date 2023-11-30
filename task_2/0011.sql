WITH UserInput AS (
    SELECT 5 AS SelectedStudentID
)
SELECT course.course_id AS "course ID", course.name AS "course name", COUNT(mark.value) AS "Submitted Midterms"
FROM course
LEFT JOIN deadline ON course.course_id = deadline.course_id AND deadline.type = 1
LEFT JOIN mark ON mark.deadline_id = deadline.deadline_id AND mark.student_id = (SELECT SelectedStudentID FROM UserInput)
GROUP BY course.course_id;
