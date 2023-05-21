# steps->
#start Transaction
#select Query to retrive the entire table
#create a save point by giving a savepoint Name--initial
#perform update operation
#create a save point by giving a savepoint Name---update
#perform delete operation
#create a save point by giving a savepoint Name--Delete
#Rollback to initial
#Rollback to update
#Rollback to delete

#commit;


use employee;
Start transaction;
INSERT INTO GROCERY VALUES(118,"channa",80.00,2);
SELECT * FROM GROCERY;
#SAVEPOINT savepoint_Name;
SAVEPOINT initialState;

UPDATE Grocery set ProductName="chilly" where ProductID=118;

SAVEPOINT updateState;

DELETE from Grocery where ProductID=116;
SAVEPOINT DeleteState;


#Rollback- It performs undo operation
#ROLLBACK to SAVEPOINT_NAME;
ROLLBACK to initialState;
SELECT *  from GROCERY;
ROLLBACK to updateState;
ROLLBACK to DeleteState;

commit;