SELECT course.name AS "course", COALESCE(COUNT(deadline.deadline_id), 0) AS "Number Of Midterms"
FROM course
LEFT JOIN deadline ON course.course_id = deadline.course_id AND deadline.type = 1
GROUP BY course.course_id;
