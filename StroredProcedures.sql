use employee;
SELECT * FROM MUMBAICG_9185;

use employee;

DELIMITER &&
CREATE PROCEDURE getStudentCount()
BEGIN
-- Query
SELECT count(*) as total from MUMBAICG_9185;
END;

call getstudentCount();


select * from enployeedetails;
DELIMITER &&
create procedure GetDegignastion(in Designation varchar(30))

BEGIN 
select empid,empname,designation from enployeedetails where 
enployeedetails.Designation=Designation;
end;

call GetDegignastion("Intern");



DELIMITER &&
create procedure GetDegignastionANDEmployeementType(in Designation varchar(30), EmployeementType text)

BEGIN 
select empid,empname,designation,EmployeementType from enployeedetails where 
enployeedetails.Designation=Designation and enployeedetails.EmployeementType =EmployeementType ;
end;

call GetDegignastionANDEmployeementType("Intern","Temp");











DELIMITER &&
CREATE PROCEDURE MaxSalary()
BEGIN
-- Query
SELECT max(Salary) as MaximumSalary from EnployeeDetails;
END;

call MaxSalary();

 
