#triggers

-- products -------- orders
use employee;

create table purchase(ProductName varchar(20),stock int );

insert into purchase values("Iphone 14 ",60);
select * from purchase;

create table Sales(Salesdate date , productName varchar(30),nos int );


# creating trigger

DELIMITER &&
create Trigger sales_purchase 
before insert on Sales
for each row
begin
update purchase set stock =(stock-new.nos)  where productName=productName;
END;

insert into SALES values (curdate(),"Iphone",10);
insert into SALES values (curdate(),"Iphone",5);

##########################################################################################################################################
create table EdubridgeTable(EnrollNo int,studentName varchar(20),Course text,location text,CourseRating decimal(10,2));

INSERT INTO EdubridgeTable VALUES(1,'Diksha','JFS','Pune', 4.5);
    
 INSERT INTO EdubridgeTable VALUES(3,'sakshi','JFS', 'Pune',- 4.7);

create table NegativeRateCheck(EnrollNo int,studentName varchar(20),Course text,location text,CourseRating decimal(10,2));
INSERT INTO EdubridgeTable VALUES(2,'Nikita','JFS','Pune',-4.2);


DELIMITER &&
create Trigger Negative_rateToZero
before insert on NegativeRateCheck
for each row
begin
update EdubridgeTable set CourseRating =0  where CourseRating<0 ;
END;




select * from EdubridgeTable

