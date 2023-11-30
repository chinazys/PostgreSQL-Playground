SELECT student.student_id AS "student ID", student.first_name AS "First name", student.last_name AS "Last name", (SELECT COUNT(*) FROM deadline) - COUNT(deadline.deadline_id) AS "Pending Midterms/Exams"
FROM student
LEFT JOIN mark ON student.student_id = mark.student_id
LEFT JOIN deadline ON mark.deadline_id = deadline.deadline_id
GROUP BY student.student_id;
