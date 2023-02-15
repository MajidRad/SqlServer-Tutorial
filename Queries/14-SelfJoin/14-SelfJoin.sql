DROP TABLE IF EXISTS tblEmployee2
GO
-- Create table tblEmployee 2
CREATE TABLE tblEmployee2(
Id INT NOT NULL IDENTITY,
NAME NVARCHAR(30),
ManagerId INT

CONSTRAINT PK_Employee PRIMARY KEY(Id),
CONSTRAINT FK_ManagerId FOREIGN KEY(ManagerId)
	REFERENCES tblEmployee2(Id)
);
GO


-- insert value to tblEmployee 2
insert into tblEmployee2(Name,ManagerId)
Values
('Max',null),
('Martin',null),
('Alex',1),
('Philips',2),
('Sarah',1),
('hary',1),
('Mary',2)
Go

-- show me EmployeeName and ManagerName in a table

select E.NAME as EmployeeName, M.NAME as ManagerName
	   FROM tblEmployee2 as E
	   JOIN tblEmployee2 as M
	   ON E.ManagerId=m.Id