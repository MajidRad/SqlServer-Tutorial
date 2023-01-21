DROP TABLE IF EXISTS tblPerson;
DROP TABLE IF EXISTS tblGender;
GO
DROP DATABASE IF EXISTS Sample;
Go


CREATE DATABASE Sample;
GO

USE[Sample];
Go

CREATE TABLE tblGender (
ID INT NOT NULL PRIMARY KEY IDENTITY,
Gender NVARCHAR(50) NOT NULL
)
GO

INSERT INTO tblGender (Gender)
VALUES('Male'),('Female'),('Unkown');
GO

--Froign key naming convention FK_<TARGETTABLE>_<SOURCETABLE> 
CREATE TABLE tblPerson(
ID INT NOT NUll IDENTITY,
Name NVARCHAR(30),
Email NVARCHAR(30),
Age Int,
GenderId INT, 
CONSTRAINT PK_Person PRIMARY KEY (ID),
CONSTRAINT FK_tblPerson_GenderId FOREIGN KEY (GenderId) REFERENCES tblGender(ID)
)
GO

INSERT INTO tblPerson(Name,Email,GenderId,Age)
VALUES
('John','john@test.com',1,28),
('Mary','Mary@test.com',2,30),
('JohnDo','johnDo@test.com',3,20),
('Alex','Alex@test.com',1,18),
('Monica','Monica@test.com',2,35)

Go 

--part 4 adding default constraint  to genderId
ALTER TABLE tblPerson
ADD CONSTRAINT DF_tblPerson_GenderId
DEFAULT 3 FOR GenderId;

--Testing tblPerson to add genderId 3 for default
INSERT INTO tblPerson(Name,Email)
VALUES
('Jimmy','jimmy@test.com');


