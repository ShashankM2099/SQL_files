USE `classicmodels`;
-- show tables;
-- Starting from Here-----Activity 1
-- Inner Join---------------------------1.1
-- Selects All  rows from both tables, as long there is a matching column
-- Left Join-----------------------------1.2
-- Joins two tables, and gets those rows based on a condition, which matches both tables
-- Right Join-------------------------------1.3
-- Joins two tables, and gets those rows based on a condition, which matches both tables
-- Full Outer Join---------------------------1.4
-- Combines both results, returns all matched/non-matched rows, and includes tables  on both sides 

/* Report the account representative (full name and email) for each customer*/
select * from customers where salesRepEmployeeNumber is null;

/* Report the report-to-office information for each employee.*/
-- select lastName, firstName, reportsTo from employees; 
select A.firstName, A.lastName, B.firstName as manager_FirstName, B.lastName as manager_LastName
from employees A
inner join employees as B
on A.reportsTo = B.employeeNumber;

/* Who are the employees in Boston?*/
select distinct emp.firstName, emp.lastName, ofc.city 
from employees emp, offices ofc  
inner join offices
 where ofc.city = 'Boston';  /* You can add this if you like -->  ofc.officeCode = emp.officeCode and <--*/

/* Report total payments for Atelier graphique.*/
select distinct cus.customerName,pay.amount 
from customers cus, payments pay 
inner join payments
where cus.customerNumber = pay.customerNumber and cus.customerName = 'Atelier graphique'; 

/* List the amount paid by each customer.*/
select distinct cus.customerName,pay.amount 
from customers cus, payments pay 
inner join payments where cus.customerNumber = pay.customerNumber group by amount; 

/* Report the total payments by date.*/
select  amount, paymentDate from payments group by paymentDate; 

/* Report those payments greater than $100,000. Sort the report so the customer who made the 
highest payment appears first.*/
select distinct cus.customerName,pay.amount 
from customers cus, payments pay 
inner join payments
where cus.customerNumber = pay.customerNumber and pay.amount >100000  
order by amount desc ; 
-- inner join payments

/* How many orders have been placed by Herkku Gifts?*/
select distinct count(ord.orderNumber), customerName
from customers cus, orders ord inner join orders 
where cus.customerNumber = ord.customerNumber and cus.customerName = 'Herkku Gifts'; 
 
 /* List the value of 'On Hold' orders.*/
select orderNumber, orderDate, requiredDate, shippedDate, orders.status, comments, customerNumber 
from orders  where status = 'On Hold'; 

/* Report the products that have not been sold.*/
select distinct pd.productCode 
from products pd, orderdetails od 
inner join orderdetails where od.productCode = pd.productCode and pd.productCode
 not in (select productCode from orderdetails); 
 
 /*    Report the number of orders 'On Hold' for each customer.*/
select distinct count(orders.orderNumber), cus.customerName, orders.status 
from customers cus 
inner join orders on cus.customerNumber = orders.customerNumber
where orders.status = 'On Hold' group by cus.customerName; 



