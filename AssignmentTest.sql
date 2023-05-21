#  -------------------------------------------------12 May Sql Revision Test ------------------------------------

use employee;
create table EnployeeDetails ( Empid int ,EmpName text , Designation text, Salary decimal (10,2),EmployeementType text);

insert into EnployeeDetails(Empid,EmpName,Designation,Salary,EmployeementType) values
(111,'jacob','FullstackDeveloper',50000.00,'Permanant'),
(112,'Arul','Executive',55000.00,'Temp'),
(113,'Sono','BackendDeveloper',80000.00,'Permanant'),
(114,'Gauri','FullstackDeveloper',56000.00,'Permanant'),
(115,'sakshi', 'Intern', 2000.00,'Temp'),
(116,'David', 'Analyst', 3500.00,'Permanant'),
(117,'Emily', 'Designer', 3800.00,'Permanant'),
(118,'Diksha', 'Marketing Specialist', 4000.00,'Temp'),
(119, 'Smita', 'Manager', 5500.00,'Permanant'),
(120, 'Nikita', 'Assistant', 3200.00,'Temp');

select * from EnployeeDetails;
-- Practice Questions
-- 1. select Employee name from the table whose name starts with an alphabet "s";
select EmpName from EnployeeDetails where EmpName like 's%';

-- 2. select Employee name from the table whose name ends with alphabet "a";
select EmpName from EnployeeDetails where EmpName like '%a';

-- 3. select Employee and Id of "Permanent" employees whose salary is greater than 50000;
select EmpName,Empid,Salary from EnployeeDetails where EmployeementType='Permanant' and Salary>50000  ;

-- 4. select the details of all the employees from the table whose designation is "FullstackDeveloper"
select * from EnployeeDetails where Designation= "FullstackDeveloper" ;

-- 5. find out the total salary of all the Employees in Accenture
select sum(Salary) as TotalSalary from EnployeeDetails;

-- 6. select all the employees whose belongs to the jobstatus as "Temp";
select * from EnployeeDetails where EmployeementType= "Temp" ;


-- 7. create employees as group as per their desigation and count their name
SELECT designation, COUNT(EmpName) AS Namecount
FROM EnployeeDetails
GROUP BY designation;

-- 8. write a sql query to order all the employees as per their designation.
select * from EnployeeDetails order by Designation; 

-- 9. write a query to check maximum and minimum salary of employees in a single query.
select min(Salary) as MinimumSalary,max(Salary) as maxSalary from EnployeeDetails;


-- 10. write a sql query to filter the Exective whose salary is exactly "55000".
select * from EnployeeDetails where salary=55000; 
