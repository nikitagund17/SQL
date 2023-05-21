use employee;
CREATE TABLE CustomersInfo (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(50),
    CustomerEmail VARCHAR(50)
);

INSERT INTO CustomersInfo VALUES(1, 'nikita', 'nikita@gmail.com.com');
 INSERT INTO CustomersInfo VALUES   (2, 'diksha', 'diksha@gmail.com');
  INSERT INTO CustomersInfo VALUES  (3, 'komal', 'komal@gmail.com');
 INSERT INTO CustomersInfo VALUES   (4, 'sakshi', 'sakshi@gmail.com');
 INSERT INTO CustomersInfo VALUES   (5, 'Isha', 'isha@gmail.com');

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    OrderDate DATE,
    CustomerID INT,
    FOREIGN KEY (CustomerID) REFERENCES CustomersInfo(CustomerID)
);

INSERT INTO Orders  VALUES (1, '20230501', 1);
  INSERT INTO Orders  VALUES   (2, '2023-05-02', 2);
 INSERT INTO Orders  VALUES    (3, '2023-05-03', 3);
 INSERT INTO Orders  VALUES    (4, '2023-05-04', 4);
 INSERT INTO Orders  VALUES    (5, '2023-05-05', 5);
select * from CustomersInfo;