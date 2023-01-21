
--if you want drop check constraint
ALTER TABLE tblPerson
DROP CONSTRAINT CK_tblPerson_Age


ALTER TABLE tblPerson
ADD CONSTRAINT CK_tblPerson_Age CHECK(Age>0 AND Age<150);