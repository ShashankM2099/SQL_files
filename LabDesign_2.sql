USE `classicmodels`;
-- show tables;
-- Starting from Here-----Activity 1
Show databases;
show tables;
describe employees;
-- employee # in employee field
select count(employeeNumber) from employees;
select * from employees;
select employeeNumber, firstName,lastName, email, jobTitle from employees;
select employeeNumber, firstName, lastName, email, jobTitle from employees where lastName ='Patterson';
select employeeNumber, firstName, lastName, email, jobTitle from employees where jobTitle = 'President';
select distinct jobTitle from employees;
select jobTitle, count(*) as count from employees
group by jobTitle;
select jobTitle, count(*) as count from employees
 group by jobTitle having count>=5;
SELECT lastName, COUNT(*) AS count FROM employees GROUP BY lastName HAVING count >= 1;

-- Activity 2A----Query from Customer--DataBase: 'customers'
-- USe the fields mentioned below
-- Fields, customerNumber, customerName, customerLastName, contactFirstName, phone, addressLine1,addressLine2
-- city, state, postalCode, country, salesRepEmployeeNumber, creditLimit
select * from customers;
select customerName,phone, city,state, postalCode, country from customers;
select customerName,phone, city,state, postalCode, country from customers where country ='USA';
select count(customerNumber) from customers where country ='USA' group by country order by country;
select distinct country from customers;
select country, max(customerNumber) from customers group by country order by country desc limit 1;


-- Activity 2C---Office Entity/Employee Table
show tables;
-- offices or employees
select * from offices;
-- Fields
-- officeCode, city, phone, addressLine1, addressLine2, state, country, postalCode, territory
select officeCode, phone, city,state, postalCode, country from offices;

SELECT * from offices
WHERE state = "CA";


