CREATE TABLE SGroup (
    GroupID		SERIAL 		PRIMARY KEY,
    Name 		VARCHAR(30)	NOT NULL
);

CREATE TABLE Student (
    StudentID	SERIAL			PRIMARY KEY,
    GroupID		INT 			REFERENCES 	SGroup(GroupID),
    FirstName 	VARCHAR(100) 	NOT NULL,
    LastName 	VARCHAR(100) 	NOT NULL,
    Code 		INT
);

CREATE TABLE Course (
    CourseID	SERIAL			PRIMARY KEY,
    Name 		VARCHAR(100)	NOT NULL
);

CREATE TABLE Deadline (
    DeadlineID	SERIAL 	PRIMARY KEY,
    CourseID 	INT 	NOT NULL	REFERENCES 	Course(CourseID),
    Date 		DATE    NOT NULL,
 	Type 		INT 	NOT NULL
);

CREATE TABLE Mark (
    StudentID 	INT 	NOT NULL	REFERENCES 	Student(StudentID),
    DeadlineID 	INT 	NOT NULL	REFERENCES 	Deadline(DeadlineID),
    Value 		INT     NOT NULL
);