use employee;

#alter command is uded to perform certain alteration in table
alter table Employeedata add designation text;

select *from Employeedata;
alter table Employeedata DROP column Address ;

alter table Employeedata add column Location text after Salary;

#truncate command is used to delete all the records

truncate table employeedata;


#ranaming the columns

alter table employeedata rename column location to address;
alter table employeedata rename to empData;
select * from empdata;

# drop is used to delete the entire data
drop table empdata;


#ASSIGNMENT ->  CREATE , ALTER , TRUNCATE , DROP 

create database edubridge;
use edubridge;

create table Batch_9185(EnrollNo varchar(20),StdName varchar(20),Address varchar(50),
JoiningDate date,Endingdate date,SessionStartTime time,SessionEndTime time);

insert into Batch_9185 values('E10051',"Nikita Gund ","Maharashtra-Nagar",20230310,20230719,020000,050000);

insert into Batch_9185 values('E10052',"Diksha Jadhav ","Maharashtra-Pune",20230310,20230719,020000,050000);

insert into Batch_9185 values('E10053',"Sakshi Gaykar ","Maharashtra-Pune",20230310,20230719,020000,050000);

insert into Batch_9185 values('E10054',"Komal Landage ","Maharashtra-Nagar",20230310,20230719,020000,050000);

insert into Batch_9185 values('E10055',"Savi Bhoir ","Maharashtra-Nagar",20230310,20230719,020000,050000);

alter table Batch_9185 rename column   address to location;


truncate table Batch_9185;
drop table Batch_9185;
select * from Batch_9185;

drop database edubridge;



