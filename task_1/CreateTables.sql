CREATE TABLE course (
    course_id   SERIAL          PRIMARY KEY,
    name        VARCHAR(100)    NOT NULL
);

CREATE TABLE deadline (
    deadline_id SERIAL      PRIMARY KEY,
    course_id   INT,
    date        date        NOT NULL,
    type        INT         NOT NULL
);

CREATE TABLE mark (
    student_id  INT,
    deadline_id INT,
    value       INT         NOT NULL
);

CREATE TABLE sgroup (
    group_id     SERIAL      PRIMARY KEY,
    name        VARCHAR(30) NOT NULL
);

CREATE TABLE student (
    student_id  SERIAL          PRIMARY KEY,
    group_id    INT,
    first_name  VARCHAR(100)    NOT NULL,
    last_name   VARCHAR(100)    NOT NULL,
    code        INT
);

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
