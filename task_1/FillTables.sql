INSERT INTO SGroup 	(Name)
VALUES
    				('CS-120a'),
    				('CS-120b'),
    				('CS-121a'),
    				('CS-121b'),
    				('CS-122');

INSERT INTO Student (GroupID, 	FirstName,	LastName,		Code)
VALUES
    				(1, 		'Jackie',	'Chan',			123),
    				(NULL,		'Kelvin',	'Keptum',		456),
    				(1,			'Michael',	'Oborne', 		NULL),
    				(NULL,		'Lorem',	'Ipsum',		NULL),
    				(3,			'Ilyukha',	'Leonidovets',	789);

INSERT INTO Course 	(Name)
VALUES
    				('Maths'),
    				('Computer Science'),
    				('DB & DBMS'),
    				('Reinforcement Learning'),
    				('Physical Education');

INSERT INTO	Deadline	(CourseID, 	Date,								Type)
VALUES
    					(1, 		CURRENT_DATE - INTERVAL '7 days',	1),
    					(1,			CURRENT_DATE + INTERVAL '5 days',	0),
                        (3,			CURRENT_DATE - INTERVAL '1 month',	0),
    					(5,			CURRENT_DATE - INTERVAL '1 day',	1),
    					(5,			CURRENT_DATE + INTERVAL '1 day',	1);

INSERT INTO	Mark	(StudentID,	DeadlineID,	Value)
VALUES
    				(1, 		1,			100),
    				(1, 		2,			97),
    				(3,			1,			81),
                    (5,			2,			65),
    				(5,			4,			100);