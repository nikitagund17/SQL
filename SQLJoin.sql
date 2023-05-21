use employee;


# joins ---> INNER JOIN , LEFT JOIN ,RIGHT JOIN,FULL JOIN
select * from trainer;
select * from lerner;

 
SELECT lerner.name, trainer.name, lerner.age, trainer.Age
FROM trainer
INNER JOIN lerner ON trainer.age = lerner.age;



#joins---> Inner Join, LEFT JOIN, RIGHT JOIN and FULL JOIN

#INNER JOIN-
SELECT 
    learners.Name,
    trainers.Name,
    Learners.Age,
    Trainers.Age
FROM
    learners
        INNER JOIN
    trainers ON trainers.age = learners.age;

#left join
#All the records in the left table only matching records in the right table
#Left JOIN-
SELECT 
    lerner.Name,
    Lerner.Age,
    trainer.Name,
    Trainer.Age
FROM
    lerner
        LEFT JOIN
    trainer ON trainer.age = lerner.age;

#Right Join
#All the records from the right side table, Only the matching records in the left side table
SELECT 
    lerner.Name,
    Lerner.Age,
    trainer.Name,
    Trainer.Age
FROM
    lerner
        right JOIN
    trainer ON trainer.age = lerner.age;

alter table lerner rename column name to LernerName;

SELECT 
    lerner.LernerName,
    Lerner.Age,
    trainer.name,
    Trainer.Age
FROM
    lerner
        FULL JOIN
trainer ON trainer.age = lerner.age;




SELECT 
    lerner.LernerName,
    Lerner.Age,
    trainer.Name,
    Trainer.Age
FROM
    lerner
        LEFT JOIN
    trainer ON trainer.age = lerner.age
union
SELECT 
    lerner.LernerName,
    Lerner.Age,
    trainer.Name,
    Trainer.Age
FROM
    lerner
        right JOIN
    trainer ON trainer.age = lerner.age;