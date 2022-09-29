use `classicmodels`;

select * from customers;
-- First Table Created
CREATE TABLE BankAccount(
id INT PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(64),
balance REAL
);

-- Second table created
CREATE TABLE BankAccountLog(
id INT AUTO_INCREMENT PRIMARY KEY,
time DATETIME,
event ENUM('D', 'W'),
preBalance REAL,
postBalance REAL
);

-- inserted and selected
INSERT BankAccount (name, balance) VALUES ('Ellen', 100);
SELECT * FROM BankAccount;
SELECT * FROM BankAccountLog;

-- creating a trigger
DELIMITER ++ 
create definer = current_user trigger updateAccount 
before update on BankAccount for each row 
begin 
if new.postBalance < NEW.preBalance then set new.enum = 'W';
end if;
end++
SET GLOBAL log_bin_trust_function_creators = 1;

DROP TABLE IF EXISTS employees_audit;
CREATE TABLE IF NOT EXISTS employees_audit (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    employeeNumber INT,
    lastname VARCHAR(50),
    firstname VARCHAR(50),
    act VARCHAR(25),
    FOREIGN KEY (employeeNumber) REFERENCES employees(employeeNumber));
    
CREATE TRIGGER before_employee_update 
BEFORE UPDATE ON employees
FOR EACH ROW 
INSERT INTO employees_audit
SET action = 'update',
employeeNumber = OLD.employeeNumber,
lastname = OLD.lastname,
changedat = NOW();



