create database edubridge;
create table employee(empid int ,empname varchar(20),managerid int,deptid int ,salary decimal(10,2),DOB date);


insert into employee(empid,empname,managerid,deptid,salary,DOB) values
(1,"Emp 1",0,1,6000,19820806),
( 2,"Emp 2", 0, 5, 6000, 19820711),
(3 ,"Emp 3", 1, 1, 2000, 19831121),
(13,"Emp 13", 5, 5, 2000, 19840309),
(3, "Emp 3", 1, 1, 2000, 19831121),
(7, "Emp 7", 5, 5, NULL, NULL);

select * from employee;


create table department(deptid int,deptname varchar(20));

