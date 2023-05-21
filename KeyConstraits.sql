
# SQL constraints -->NOT NULL ,UNIQUE, PRIMARY KEY,FOREGIN KEY ..

# NOT NULL -->does not allow null

CREATE TABLE CUSTOMERS ( customerID int not null, CustomerName varchar(30),Age int);

insert into CUSTOMERS  values(111,'Nikita',21);
insert into CUSTOMERS  values(111,null,21);
insert into CUSTOMERS  values(null,'Diksha',21);# this is not possible
select * from customers;


drop table customers;

# UNIQUE --> data must always be unique
CREATE TABLE CUSTOMERS ( customerID int not null, CustomerName varchar(30) unique,Age int);
insert into CUSTOMERS  values(111,'Nikita',21);
insert into CUSTOMERS  values(112,null,21);
# insert into CUSTOMERS  values(113,'Diksha',22); --> canot acceept the dublicate value

#PRimary key --> IT always accept unique values , a table must have only one primary ker but it can be set  

CREATE TABLE CUSTOMERS ( customerID int , CustomerName varchar(30) ,Age int, primary key (customerID));
insert into CUSTOMERS  values(111,'Nikita',21);
insert into CUSTOMERS  values(111,"jack",21); # not accepted because primary key is unique
insert into CUSTOMERS  values(null,'joe',10); # primary key cant be null 
drop table customers;

# add primary key using alter command
CREATE TABLE CUSTOMERS ( customerID int , CustomerName varchar(30) ,Age int);
ALTER TABLE CUSTOMERS ADD PRIMARY KEY (customerid);
insert into CUSTOMERS  values(111,'Nikita',21);
insert into CUSTOMERS  values(111,"jack",21); # not accepted because primary key is unique
insert into CUSTOMERS  values(null,'joe',10);# primary key cant be null 

# delete primary key
ALTER TABLE CUSTOMERS drop PRIMARY KEY;
insert into CUSTOMERS  values(111,'Nikita',21);
insert into CUSTOMERS  values(111,"jack",21); # not accepted because primary key is unique


#setting primary key consraints for two cols/fields
CREATE TABLE CUSTOMERS ( customerID int , CustomerName varchar(30) ,Age int,shopID int,constraint cus_pk  primary key(customerID,shopID));
insert into CUSTOMERS  values(111,'Nikita',21,201);
insert into CUSTOMERS  values(11,'diksha',22,201);

drop table customers;
SELECT 
    *
FROM
    customers;

# FOREGIN KEY demonstration
# IT is consider as referential integrity
# it creats a relationship bet two tables using feregin key constarints

# First table using primary key
CREATE TABLE JavaPracticle (
    pract_ID INT,
    Studentname VARCHAR(20),
    program TEXT,
    CONSTRAINT java_pk PRIMARY KEY (pract_ID)
);

#second table usign foregin key
CREATE TABLE JavaTheory (
    theory_id INT,
    Studentname VARCHAR(20),marks int,
    pract_ID INT REFERENCES JavaPracticle (practId),
    CONSTRAINT Theory_pk PRIMARY KEY (theory_id)
);

drop table JavaTheory;
insert into JavaPracticle values(1,"Sandip","palindrome");
insert into JavaPracticle values(2,"Janani","Cubic num");
insert into JavaPracticle values(3,"Avi","Even/Odd");

select * from JavaPracticle;

insert into JavaTheory values(111,"sandip",90,1);
insert into JavaTheory values(112,"Janani",80,2);
insert into JavaTheory values(113,"Avi",77,3);
insert into JavaTheory values(114,"Nikita",100,4);

select * from JavaTheory;


