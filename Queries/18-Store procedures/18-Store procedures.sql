CREATE PROC spGetEmployeeByGenderAndDepartmentId
@DepartmentId int,
@Gender nvarchar(20)
AS
BEGIN
select Name,Gender,DepartmentId 
from tblEmployee 
where
DepartmentId=@DepartmentId And Gender=@Gender
END;

exec spGetEmployeeByGenderAndDepartmentId @DepartmentId=2,@Gender=male

sp_helpText spGetEmployeeByGenderAndDepartmentId;

ALTER PROC spGetEmployeeByGenderAndDepartmentId  
@DepartmentId int,  
@Gender nvarchar(20)  
AS  
BEGIN  
SELECT Name,Gender,DepartmentId   
FROM tblEmployee   
WHERE  
DepartmentId=@DepartmentId And Gender=@Gender  
ORDER BY 
Name
END;

DROP PROCEDURE spGetEmployeeByGenderAndDepartmentId;