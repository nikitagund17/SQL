use employee;

create table Trainer(ID int ,Name varchar(20),Age int);
insert into trainer values(101,"Ruby",30);
insert into trainer values(102,"Praisy",30);
insert into trainer values(101,"Anil",30);
insert into trainer values(101,"Vidur",30);

create table Lerner(ID int ,Name varchar(20),Age int);
insert into Lerner values(101,"nikita",20);
insert into Lerner values(102,"diksha",21);
insert into Lerner values(101,"komal",21);
insert into Lerner values(101,"usha",20);
insert into Lerner values(101,"gauri",40);

select* from trainer;
select * from lerner;

#-- ANY Operator

# This query retrieves any age of the learners is equal to the trainers age;
#Any operator is always working with subquery
select * from trainer where Age= Any(select Age from lerner);

#All operator
select * from lerner where age > All(select age from trainer);