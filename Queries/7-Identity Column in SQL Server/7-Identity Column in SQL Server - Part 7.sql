use Sample;
select * from tblPerson;

delete from tblPerson where (ID=1);
SET IDENTITY_INSERT tblPerson ON
INSERT INTO tblPerson (ID,Name) VALUES(1,'Jane')

--DATA BASE CHECK CONSISTENCY 
DELETE FROM tblPerson;
DBCC CHECKIDENT('tblPerson',RESEED,0);