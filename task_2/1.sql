SELECT SGroup.Name AS "Group", COUNT(Student.StudentID) AS "Number of Students"
FROM SGroup
LEFT JOIN Student ON SGroup.GroupID = Student.GroupID
GROUP BY SGroup.GroupID;
