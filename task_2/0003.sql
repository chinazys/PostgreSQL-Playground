SELECT course.name AS "course w/o Midterms"
FROM course
LEFT JOIN deadline ON course.course_id = deadline.course_id AND deadline.type = 1
WHERE deadline.deadline_id IS NULL;
