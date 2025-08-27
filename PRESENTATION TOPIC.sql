CREATE DATABASE bank_management;
USE atm_management;

CREATE TABLE customer(
customer_id INT PRIMARY KEY,
full_name VARCHAR(20),
email VARCHAR(39),
phone VARCHAR(20),
address VARCHAR(20)
);


CREATE TABLE account(
account_id INT PRIMARY KEY,
account_number VARCHAR(20),
balance DECIMAL(10,2),
customer_id INT,
FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
);



CREATE TABLE transaction_amount(
transaction_id INT PRIMARY KEY,
t_type VARCHAR(20),
amount DECIMAL(10,2),
account_id INT, 
FOREIGN KEY (account_id) REFERENCES account(account_id),
atm_id INT,
FOREIGN KEY (atm_id) REFERENCES atm(atm_id)
);

INSERT INTO customer(customer_id,full_name,address,email,phone)
VALUES(1,'zain ul abedin','haveli lakh','zain9246@gamil.com','03292361251'),
       (2,'ali ahmad','lahore','aliahmad346@gmail.com','03204567876'),
	   (3,'wahab','lahore','wahab3453@gmail.com','03043846023'),
	   (4,'islam','okara','islam245@gmail.com','03098763456');

INSERT INTO account(account_id,account_number,balance,customer_id)
VALUES(1001,'9417865764',1000.00,2),
      (1002,'7435068897',1200.89,1),
	  (1003,'9078563493',1800.45,4),
	  (1004,'2746834920',8700.74,3);

UPDATE customer
SET address = 'haveli lakha' WHERE customer_id = 1;

 

INSERT INTO transaction_amount(transaction_id,t_type,amount,atm_id,account_id)
VALUES(71,'deposit',1000.50,100,1001),
      (72,'withdraw',3000.50,101,1002),
	  (73,'check balance',2500.40,102,1003),
	  (74,'transfer',3400.44,103,1004);
       

 

 



SELECT * FROM customer;
SELECT * FROM account;
 
SELECT * FROM transaction_amount;