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
INSERT INTO tblEmployee2(Name,ManagerId)
VALUES
('Max',null),
('Martin',null),
('Alex',1),
('Philips',2),
('Sarah',1),
('hary',1),
('Mary',2)
GO

-- show me EmployeeName and ManagerName in a table
-- If ManagerName == null show me NoManager in managerName

--ISNULL WAY
SELECT E.NAME as EmployeeName, ISNULL(M.NAME,'NoManager')  as ManagerName
	   FROM tblEmployee2 as E
	   Left JOIN tblEmployee2 as M
	   ON E.ManagerId=m.Id

--COALESCE FUNCTION WAY 
SELECT E.NAME as EmployeeName, COALESCE(M.NAME,'NoManager')  as ManagerName
	   FROM tblEmployee2 as E
	   Left JOIN tblEmployee2 as M
	   ON E.ManagerId=m.Id

--CASE WAY
-- CASE WHEN expression THEN '' ELSE '' END
SELECT E.NAME as EmployeeName,case when M.Name IS NULL then 'NoManager'else M.name end as ManagerName
	   FROM tblEmployee2 as E
	   Left JOIN tblEmployee2 as M
	   ON E.ManagerId=m.Id
