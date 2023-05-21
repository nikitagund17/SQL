use employee;

CREATE TABLE GROCERY(ProductID int, ProductName text,Price double(10,2),Quantity_In_Kg int);
INSERT INTO GROCERY VALUES(112,"Rice",70.00,2);
INSERT INTO GROCERY VALUES(113,"wheat",100.00,1);
INSERT INTO GROCERY VALUES(114,"Almond",500.00,2);
INSERT INTO GROCERY VALUES(115,"cashew",700.00,5);
SELECT * FROM GROCERY;
SET SQL_SAFE_UPDATES = 0;
#update--- Used to update the Existing data in the table.
UPDATE GROCERY SET Quantity_In_Kg=5 where  ProductID=112;

UPDATE GROCERY SET Price=500 where ProductName="Dhal";

#Delete-- Used to delete particular record in the table
DELETE FROM GROCERY where productName="milk";

DELETE From GROCERY;

#select- is used to retrieve any data from the table
SELECT ProductID, ProductName From GROCERY;

SELECT ProductID, ProductName,price From GROCERY where Price=100;
SELECT ProductName,Quantity_In_kg from GROCERY where Quantity_In_kg=2;

#create a table named as accenture
#EmpID,name,designation,Experience,Salary
#INSERT,UPDATE,DELETE,SELECT

CREATE TABLE accenture(EmpID int, EmpName text,designation char (20),Experience_years int,Salary double(10,2));
insert into accenture values(101,"nikita","Manager",10,50000.00);
insert into accenture values(102,"diksha","CEO",7,70000.00);
insert into accenture values(103,"sakshi","Engineer",5,48000.00);
insert into accenture values(104,"gauri","Analyst",10,48000.00);

select * from accenture;

UPDATE accenture SET Salary=25000.00 ;

DELETE FROM accenture where EmpName="sakshi";

select EmpID,designation from accenture;

select EmpID,Salary from accenture where salary=48000.00;



