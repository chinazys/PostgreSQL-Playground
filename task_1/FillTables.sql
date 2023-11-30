ALTER TABLE deadline
DROP CONSTRAINT IF EXISTS fk_deadline_course;

ALTER TABLE mark
DROP CONSTRAINT IF EXISTS fk_mark_student,
DROP CONSTRAINT IF EXISTS fk_mark_deadline;

ALTER TABLE student
DROP CONSTRAINT IF EXISTS fk_student_group;

INSERT INTO course 	(name)
VALUES
                    ('Maths'),
                    ('Computer Science'),
                    ('DB & DBMS'),
                    ('Reinforcement Learning'),
                    ('Physical Education');

INSERT INTO	deadline    (course_id, date,                               type)
VALUES
    					(1,         CURRENT_DATE - INTERVAL '7 days',   1),
    					(1,         CURRENT_DATE + INTERVAL '5 days',   0),
                        (3,         CURRENT_DATE - INTERVAL '1 month',  0),
    					(5,         CURRENT_DATE - INTERVAL '1 day',    1),
    					(5,         CURRENT_DATE + INTERVAL '1 day',    1);

INSERT INTO	mark    (student_id,    deadline_id,    value)
VALUES
    				(1,             1,              100),
    				(1,             2,              97),
    				(3,             1,              81),
                    (5,             2,              65),
    				(5,             4,              100);

INSERT INTO sgroup 	(name)
VALUES
                    ('CS-120a'),
                    ('CS-120b'),
                    ('CS-121a'),
                    ('CS-121b'),
                    ('CS-122');

INSERT INTO student (group_id,  first_name, last_name,      code)
VALUES
                    (1,         'Jackie',   'Chan',         123),
                    (NULL,      'Kelvin',   'Keptum',       456),
                    (1,         'Michael',  'Oborne',       NULL),
                    (NULL,      'Lorem',    'Ipsum',        NULL),
                    (3,         'Ilyukha',  'Leonidovets',  789);

ALTER TABLE deadline
ADD CONSTRAINT fk_deadline_course
FOREIGN KEY (course_id) REFERENCES course(course_id);

ALTER TABLE mark
ADD CONSTRAINT fk_mark_student
FOREIGN KEY (student_id) REFERENCES student(student_id),
ADD CONSTRAINT fk_mark_deadline
FOREIGN KEY (deadline_id) REFERENCES deadline(deadline_id);

ALTER TABLE student
ADD CONSTRAINT fk_student_group
FOREIGN KEY (group_id) REFERENCES sgroup(group_id);
