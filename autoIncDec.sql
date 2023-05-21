#Auto increment 
# it allows a unique number has to generate automatically at the time of inserting
-- new record 

# it is mandatory to set primary key for the field which declared as Auto_increment
#the default value od auto_increment is 1

use employee;
CREATE TABLE studentDetails (
    StudentID INT AUTO_INCREMENT,
    studentName VARCHAR(20),
    marks INT,
    PRIMARY KEY (StudentID)
);


insert into studentDetails(studentName,marks) values("Nikita",100);
insert into studentDetails(studentName,marks) values("Diksha",99);
insert into studentDetails(studentName,marks) values("sakshi",84);


select * from studentDetails;

alter table studentDetails auto_increment =100;

