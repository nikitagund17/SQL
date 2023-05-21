#foreign key demonstration
#it is considered as a referencial integrity, 
#it creates a relationship between two tables using the foreign key constraint

# First table using primary key
use employee;
CREATE TABLE javaPractical (
    prac_ID INT,
    Studentname VARCHAR(20),
    Program TEXT,
    CONSTRAINT java_pk PRIMARY KEY (prac_ID)
);

# Second table uses foreign key
CREATE TABLE JavaTheory (
    theory_id INT,
    studentName VARCHAR(30),
    marks INT, PracticalID int,constraint jp_fk foreign key(PracticalID) REFERENCES javaPractical(prac_ID)
);

insert into javapractical values(111,'Pranali','palindrome');
insert into javapractical values(112,'Dhanashri','BinaryTree');
insert into javapractical values(113,'Prathiksha','LinkedList');
insert into javapractical values(118,'sreeja','StringManipulation');

insert into javatheory values(1001,'pranali',90,111);
insert into javatheory values(1002,'Dhanashri',95,112);
insert into javatheory values(1003,'Prathiksha',98,113);
insert into javatheory values(1004,'Sreeja',90,118);


select * from javapractical;
Drop table javapractical;
Drop table javatheory;


select * from javatheory;

#check constraint
#It is mainly used to limit the range of the value.
#it can be declared by using the reserved keyword 'CHECK'

CREATE TABLE License (
    Registernumber INT PRIMARY KEY,
    Name VARCHAR(30),
    VehicleDetails VARCHAR(30),
    AGE INT,
    CHECK (Age >= 18)
);

insert into License values(121,'Jefrin','Bike',20);
insert into License values(122,'vaishnavi','car',32);
# insert into License values(132,'nikita','car',12); --> accept only age > 18 

select * from License;

# default constraint
#it is set a default value / fixed value
#It can be implemented by the reserved keyword "Default";

CREATE TABLE MumbaiCG_9185 (
    Enroll VARCHAR(15),
    LearnerName TEXT,
    Course TEXT,
    collegeName varchar(20) DEFAULT 'samarthCollege'
);

select * from mumbaicg_9185;

insert into MumbaiCG_9185 values("EBEON0223736109","Diksha","JavaFullStack",default);
insert into MumbaiCG_9185 values("EBEON0223736041","USHA","JavaFullStack","sccsgdjh");
insert into MumbaiCG_9185 values("EBEON0223736094","pallavi","JavaFullStack",default);






