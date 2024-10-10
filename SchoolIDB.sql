CREATE DATABASE SchoolIDB
USE SchoolIDB
GO
CREATE TABLE Speciality
(
	Id INT PRIMARY KEY IDENTITY,
	Name NVARCHAR(16) NOT NULL UNIQUE, 
	Description NVARCHAR(1024),
	GraduatesTitle NVARCHAR(32) NOT NULL UNIQUE,
	StartGrade INT CONSTRAINT Grade_Check1 CHECK(StartGrade BETWEEN 1 AND 12) NOT NULL,
	EndGrade INT CONSTRAINT Grade_Check2 CHECK(EndGrade BETWEEN 1 AND 12) NOT NULL,
)
GO
CREATE TABLE Classes
(
	Id INT PRIMARY KEY IDENTITY,
	Grade INT CONSTRAINT Grade_Check CHECK(Grade BETWEEN 1 AND 12) NOT NULL,
	GradeLetter NVARCHAR(1) NOT NULL,
	SpecialityID INT CONSTRAINT Classes_Speciality FOREIGN KEY REFERENCES Speciality(Id) NOT NULL,

)
GO

CREATE TABLE Teachers
(
	Id UNIQUEIDENTIFIER PRIMARY KEY default NEWID(),
	FirstName NVARCHAR(16) NOT NULL,
	LastName NVARCHAR(16) NOT NULL,
	Gender BIT NOT NULL,
	Email NVARCHAR(32) NOT NULL UNIQUE,
	Subjects NVARCHAR(64) NOT NULL,
	ManagedClassId INT CONSTRAINT Teachers_Classes FOREIGN KEY REFERENCES Classes(Id),
)
GO

CREATE TABLE Students
(
	Id UNIQUEIDENTIFIER PRIMARY KEY default NEWID(),
	FirstName NVARCHAR(16) NOT NULL,
	SurName NVARCHAR(16),
	LastName NVARCHAR(16) NOT NULL,
	GSM NVARCHAR(16) NOT NULL,
	Email NVARCHAR(32) NOT NULL UNIQUE,
	Address NVARCHAR(64) NOT NULL,
	Age INT CONSTRAINT Age_Check CHECK(Age BETWEEN 8 AND 20) NOT NULL,
	Gender BIT NOT NULL,
	ClassID INT CONSTRAINT Student_Classes FOREIGN KEY REFERENCES Classes(Id) NOT NULL,

)
GO

INSERT INTO Speciality VALUES
('Programmer', 'Includes coding with C#, SQL, HTML, JAVA etc.','Proffesional Programmer', 8, 12),
('Mechanic', 'Includes learning how to fix car, trucks etc.','Proffesional Mechanic', 7, 12),
('Engineer', 'Includes soldiring circuits and learning how electricity works','Proffesional Engineer', 9, 12)
GO

INSERT INTO Classes VALUES
(10, 'B', 2),
(11, 'A', 1)
GO

INSERT INTO Teachers VALUES
(default, 'Ognqn', 'Ognqnov', 1, 'o.ognqnov@gmail.com', 'Obektno Orientirano Programirane', 2),
(default,'Gergana', 'Ivanova', 0, 'g.ivanova34@gmail.com', 'Avtomobilen mehanizum', 1),
(default,'Aleksandur', 'Aleksandrov', 1, 'a.aleksandr4@gmail.com', 'Vgradeni sistemi', 2)

GO
INSERT INTO Students VALUES
(default,'Simeon', 'Ivanov', 'Simeonov', '089 222 3145', 'siv.simeonov@abv.bg', 'Hristo Botev 8', 16, 1, 2),
(default,'Petur', 'Plamenov', 'Hvurchilkov', '089 374 1009', 'peturcho@gmail.com', 'Suedinenie 48', 16, 1, 1),
(default,'Georgi', 'Manchev', 'Nikolov', '089 121 2252', 'goshko@abv.bg', 'Hristo Botev 9', 17, 1, 2),
(default,'Filip', 'Totev', 'Botev', '088 724 5047', 'filipchu@yahoo.com', 'Velika 24', 17, 1, 2),
(default,'Boris', 'Ivanov', 'Dimitrov', '089 255 9345', 'borko@abv.bg', 'Georgi Rakovski 5', 15, 1, 1),
(default,'Velislav', 'Viktorov', 'Dimanov', '089 109 8457', 'dimanov@gmail.com', 'Osvobojdenie 9', 17, 1, 2),
(default,'Nikola', 'Nikoslav', 'Nikolov', '089 897 2390', 'nikcho@abv.bg', 'Hristo Botev 10', 15, 1, 1),
(default,'Kamen', 'Kamenov', 'Hvurchilkov', '089 974 1294', 'hvurchasht297@gmail.com', 'Hadji Dimitar 2', 15, 1, 1),
(default,'John', 'Atanasov', 'Beriev', '089 971 0938', 'JAB23@gmail.com', 'Amerika 25', 17, 1, 2),
(default,'Simeon', 'Krasimirof', 'Petranov', '089 222 3145', 'simeon.krasimirpetranovv@abv.bg', 'Hristo Botev 8', 16, 1, 1)

