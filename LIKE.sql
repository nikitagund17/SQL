use employee;
select * from trainer;
select * from accenture;
#retrives values start with 111
select * from trainer where ID like'102%';

#retrives ID ends with 2
select * from trainer where ID like '%2';

#retrive name which contains a at 3rs positon
select * from trainer where Name like '__a%';

select * from trainer where Name like '_r_i__%';

select * from trainer where Name like '%a%';


# 1Finds any values that start with 102.

select * from trainer where ID like'102%';


#2Finds any values that have 10 in any position.*/
select * from trainer where ID like'%10%';


#3 Finds any values that have 01 in the second and third positions.
select * from trainer where ID like'_01%';


#4Finds any values that start with p and are at least 3 characters in length.
select * from trainer where Name like 'P_%_%';

#5Finds any values that end with y.
select * from trainer where Name like '%y';


#6Finds any values that have a r in the second position and end with a y.
select * from trainer where Name like '_r%y';


#7Finds any values in a five-digit number that start with R and end with y.
select * from trainer where Name like 'R__y';

