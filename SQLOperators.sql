use employee;

#Arithmetic operators
#--> +,-,*,/,%

select 100+200 as addition;
select 400-200 as substration;
select 100*200 as multiplication;
select 400/200 as division;
select 100%200 as modulo;
select 10+20*10/2+100-500 as calculatuions;

select * from employee.grocery;

select  ProductName , Quantity_In_Kg +2 as newQuantity from grocery;

select  ProductName , Quantity_In_Kg -2 as newQuantity from grocery;
select  ProductName , Quantity_In_Kg *2 as newQuantity from grocery;
select  ProductName , Quantity_In_Kg /2 as newQuantity from grocery;

select *from employee.accenture;

select EmpName , Salary +1000 as newSalary from accenture;

select EmpID , Experience_years +1 from accenture;

select EmpID , Experience_years +1 as EXP_years from accenture;

select EmpName , Salary - 2000 as tax from accenture;


#comparision operators
#--> <,>,=,!=,<=,>=

select * from grocery where price<200;
select ProductName ,price from grocery where price >300;

select * from grocery where Quantity_In_Kg!=2;

select ProductName from grocery where Productname="Rice";

select * from grocery where price<=100;

select ProductID, Price from grocery where Price>=200;

insert into grocery values(116,"Dahi",200,4);
insert into grocery values(117,"Chana",300,7);
insert into grocery values(118,"Bread",250,5);
select * from grocery;

# and oprator
select * from grocery where price=200 and Quantity_In_Kg=4;

#or operator
select * from grocery where price=200 or Quantity_In_Kg=5;
select * from grocery where price=200 or productname="coffee";

#between operator
select * from grocery where price between 100 and 500;
select price,quantity_in_kg,productid from grocery where productid between 101 and 115;


# IN operator
select * from grocery where productname In("rice","dahi","milk");

#NOT IN operator
select * from grocery where productname NOT In("rice","dahi");

#like operator ---> wild card operator %
select * from grocery where productname like 'c%'; # printing name start c 

select * from grocery where productname like '%t'; # printing name end t 


select* from grocery;
#comparision practice
select productname ,productid from grocery where price<100;
select productname ,productid from grocery where price>100;
select productname ,productid from grocery where price<=200;
select productname ,productid from grocery where price>=300;
select productname ,productid from grocery where productname="rice";
select productname ,productid from grocery where productname!="chana";

#OR operator practice
select * from grocery where productname="rice" or price!=200;
select * from grocery where productname="rice" or price=200;

#AND operator practice
select * from grocery where price=200 and Quantity_In_Kg=4;

#BETWWEEN practice
select price,quantity_in_kg,productid from grocery where productid between 101 and 115;

#NOT BETWEEN
select price,quantity_in_kg,productid from grocery where productid not between 101 and 115;

# IN operator
select * from grocery where productname In("rice","dahi","milk");

#NOT IN operator
select productname,price from grocery where price NOT In(200,500);

#like operator 
select * from grocery where productname like 'c%'; # printing name start c 
select * from grocery where productname like '%t'; # printing name end t 















