use `classicmodels`;
/* Who is at the top of the organization (i.e.,  reports to no one).*/
select * from employees where reportsTo is Null;

/* Who reports to William Patterson?*/
select distinct A.firstName as First_Name, A.lastName as Last_Name, A.reportsTo as Reporting_To, 
B.firstName as manager_FirstName, B.lastName as manager_LastName from employees A
inner join employees B
on A.reportsTo = B.reportsTo
where A.firstName ='William' and A.lastName = 'Patterson';

/* List all the products purchased by Herkku Gifts.*/
select distinct prod.productName as Products, customerName as Bought_By
from customers cus, products prod inner join orders 
where cus.customerName = 'Herkku Gifts'; 

/* Find products containing the name 'Ford'.*/
select productName from products where productName like '%Ford%';

/* List products ending in 'ship'.*/
select * from products where productName like '%ship';

/* Report the number of customers in Las Vegas, San Francisco, Singapore, and Paris*/
select distinct count(customerNumber) as customersIn, city from customers
where city in( 'Las Vegas', 'San Francisco', 'Singapore', 'Paris') group by city;

/* What are the products with a product code in the range S700_1000 to S700_1499?*/
select * from products where productCode between 'S700_1000' and 'S700_1499';
-- select distinct * from products where productCode > 'S700_1000' and productCode < 'S700_1499';

/* Which customers have a digit character '4' in their name?*/
select distinct customerName from customers where customerName like '%4%';

/* List the names of employees called Dianne or Diane.*/
select distinct * from employees where firstName in ("Diane","Dianne") or lastName in("Diane","Dianne") ;

/* List the products containing ship or boat in their product name.*/
select * from products where productName like "%ship%" or "%boat%";

/* List the products with a product code beginning with S700.*/
-- select * from products where productCode > "S700";
select distinct * from products where productCode like "S700%";

/* List the names of employees called Larry or Barry.*/
select distinct * from employees where firstName in ("Larry","Barry") ;

/* List the vendors whose name ends in Diecast.*/
select distinct productVendor from products where productVendor like "%Diecast";


/* List the names of sales representatives who have the maximum number of customers.*/
select  concat( a.firstName," ",a.lastName) salesrep_name, a.employeeNumber from employees a
 where a.employeeNumber  IN 
 (select   B.salesRepEmployeeNumber from 
 (select max(cnt), salesRepEmployeeNumber from (select a.salesRepEmployeeNumber, count(a.customerNumber) cnt from customers a 
   group by a.salesRepEmployeeNumber having a.salesRepEmployeeNumber is not  null  
   order by cnt desc) AS X ) as B);
 
 
 
