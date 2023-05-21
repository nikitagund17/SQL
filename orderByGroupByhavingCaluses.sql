#order by, group by,having clauses
#order by is used to sort the data in ascending order
#it is achieved bt using the keywords ASC---Ascending order/DESC-->descending
use employee;
select * from grocery;
select * from grocery order by productname;

select * from grocery order by Quantity_in_kg desc;

select price from grocery order by price ASC;

select * from grocery order by productname asc, Quantity_in_kg desc; 


#group by 

select count(productName), Quantity_in_kg from Grocery group by Quantity_in_kg;

select count(productName),price from grocery group by price;

#having 
select count(productName),Quantity_in_kg,price from grocery group by Quantity_in_kg having min(price)<500 ;

set global sql_mode=(select replace(@@sql_mode,'ONLY_FULL_GROUP_BY',''));

SHOW variables LIKE 'sql_mode';
set global sql_mode='';