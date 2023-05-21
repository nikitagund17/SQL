use employee;
select * from courseDetails;

-- A VIEW is a database object with contains no values.
-- creation of view is based in another table/ base table
-- view is otherwise called as "Virtual Table" it is combining two or more cols in a single table.
-- create , updating a view  deleting a view;


CREATE VIEW TrainerDetails AS
    SELECT 
        Trainer,
        coursename,
        trainersalary,
        TrainerOtherSpecialization
    FROM
        courseDetails;
        
select * from TrainerDetails;

 --  updating view 
 alter view TrainerDetails as select courseid,coursename from courseDetails;
 
 drop view TrainerDetails;
 
 ######################################
 select * from EnployeeDetails;
 
 CREATE VIEW EmployeeInfo AS
    SELECT 
        empid,
        empname,
        designation
     
    FROM
        EnployeeDetails;
 
 select * from EmployeeInfo;
 
  alter view EmployeeInfo as select EmployeementType,Salary from EnployeeDetails;
  
 
