CREATE TABLE Courses (
    CourseId INT NOT NULL PRIMARY KEY,
    CourseName VARCHAR(50) NOT NULL,
	LecturerName VARCHAR(50) NOT NULL
);
CREATE TABLE Students (
    StudentId INT NOT NULL PRIMARY KEY,
    Name VARCHAR(50) NOT NULL,
    City VARCHAR(50) NOT NULL,
    CourseId INT,
    FOREIGN KEY (CourseId) REFERENCES Courses(CourseId)
);
INSERT INTO Courses (CourseId, CourseName, LecturerName)
VALUES
(1, 'Web Development', 'M.M. Herath'),
(2, 'Graphic Design', 'J.S.V. Piyasena'),
(3, 'Mobile App Development', 'K.K.S. Dias'),
(4, 'Java', 'U.H.S. Perera');
INSERT INTO Students (StudentId, Name, City, CourseId)
VALUES
(1, 'Kasun Gamage', 'Kandy', 2),
(2, 'Daniel Sam', 'Jaffna', 3),
(3, 'Hansi Silva', 'Colombo', 1),
(4, 'Ranidu Heath', 'Matara', 3),
(5, 'Praneeth Wijesinghe', 'Kandy', 4),
(6, 'Nuwani Herath', 'Rathnapura', 1);
SELECT * FROM Students;
SELECT StudentId, Name, City FROM Students WHERE City = 'Kandy';
UPDATE Students SET City = 'Galle' WHERE StudentId = 4;
SELECT Students.StudentId, Students.Name, Students.City, Courses.CourseName 
FROM Students 
INNER JOIN Courses ON Students.CourseId = Courses.CourseId;




