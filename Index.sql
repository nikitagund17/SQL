-- Index
-- Thesein the faster  are used to retrive data from the database 
-- User cant see the indexee , but it can be used to speedup the retrival activities


use employee;
create table Acenture ( Empid int ,EmpName varchar(20) , Designation varchar(20), Salary decimal (10,2),EmployeementType text);

insert into Acenture(Empid,EmpName,Designation,Salary,EmployeementType) values
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

select * from Acenture;
 # creating an index on employeedetails
 create index acentureIndex on Acenture (Empname);
 
 select * from accentureIndex;
 describe Acenture;
 
create index DegIndex on Acenture (Designation);
select * from DegIndex;



describe learner;
# single column index
create index learersIndex on learner(age);
#unique index
Create UNIQUE index uniqueindex on learner(LearnersNAme);

select * from trainers;
#creating index for multiple columns is called as composite indexes
create index TrainersIndex1 on trainers(idtrainers,age);
describe trainers;


select * from edubridge;

#table ------------edudubridge -----1000
#retrive "Enroll "------>nikita-------->550/1000

explain select Course ,StudentName from edubridge where AssismentsCompleted =9;
select * from edubridge where 


#without index
Explain select CourseNAme,Trainer from coursedetails where feesdetails=25000;

#with index
explain select name,age from trainers where age=32;