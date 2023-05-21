use employee;

CREATE TABLE learner (
  LERNERSid INT,
  Learnersname VARCHAR(50),
  age INT
);

INSERT INTO learner (LERNERSid, Learnersname, age) VALUES
  (1, 'Nikita', 25),
  (2, 'Diksha', 22),
  (3, 'Jack', 28),
  (4, 'Joe', 24),
  (5, 'gauri', 27);

select * from learner;

CREATE TABLE trainers (
  id INT,
  name VARCHAR(50),
  age INT
);

INSERT INTO trainers (id, name, age) VALUES
  (101, 'Sarah', 22),
  (102, 'David', 35),
  (103, 'Jessica', 29),
  (104, 'Robert', 28),
  (105, 'Olivia', 31);

select * from trainers;


#CROSS JOIN---> Generally ir performs cartesian product, with "where" condition it is exactly acting as INNNER JOIN
#Form1-- 4x4=16
select trainers.id,trainers.Name,learner.learnersName from trainers CROSS JOIN learner;

#form 2 with WHERE condition---> Inner join

select trainers.name,learner.learnersName,trainers.age from trainers CROSS join learner where learner.age=trainers.age;



#self join--->joining a table by itself
select * from trainers;

select t1.id,t2.Name ,t1.Name,t2.age from trainers t1,trainers t2 where t1.age > t2.age;
select t1.id,t2.Name ,t1.Name,t2.age from trainers t1,trainers t2 where t1.age = t2.age;

select t1.idTrainers,t2.Name ,t1.Name,t2.age from trainers t1,trainers t2 where t1.age > t2.age;
