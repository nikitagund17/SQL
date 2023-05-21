use employee;
CREATE TABLE Employees (
  Empid INT,
  Empname VARCHAR(50),
  Address VARCHAR(100),
  Salary DECIMAL(10, 2)
);

INSERT INTO Employees (Empid, Empname, Address, Salary)
VALUES (1, 'Nikita', 'Pune', 5000.00),
       (2, 'Diksha', 'Pune', 6000.00),
       (3, 'Jiya', 'Nashik', 7000.00),
       (4, 'Jack', 'Mumbai', 5500.00),
       (5, 'Joe', 'Delhi', 8000.00);

select * from Employees;

# Aggregate functions
# 1----> SUM 
select sum(salary) as SalarySum from Employees;

# 2---> min 
select min(salary) as MinimumSalary from Employees;

# max ---> 
select max(salary) as MaximumSalary from Employees;

# average 
select avg(salary) as AvarageSalary from Employees;


CREATE TABLE Edubridge (
  EnrollNO INT primary key,
  StudentName VARCHAR(50),
  Course VARCHAR(100),
  AssismentsCompleted INT,
  OverAllScore DECIMAL(5, 2)
);

INSERT INTO Edubridge (EnrollNO, StudentName, Course, AssismentsCompleted, OverAllScore)
VALUES (101, 'Nikita', 'Data Science', 8, 85.50),
       (102, 'Diksha', 'Web Development', 6, 78.25),
       (103, 'Komal', 'Database Management', 7, 92.75),
       (104, 'Dhanu', 'Java Full Stack', 5, 80.00),
       (105, 'Sakshi', 'Artificial Intelligence', 9, 88.50);
       
select * from Edubridge;

# 1----> SUM 
select sum(OverAllScore) as MinimumScore  from Edubridge;

# 2---> min 
select min(AssismentsCompleted) as MinimumSalary from Edubridge;

# 3---->max 
select max(AssismentsCompleted) as MaximumSalary from Edubridge;

# 4---->average 
select avg(OverAllScore) as AvarageSalary from Edubridge;
