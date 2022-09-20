CREATE DATABASE qa_restaurant;
USE qa_restaurant;
CREATE table customers(cust_id int unique NOT NULL auto_increment, cust_name varchar(100) not null, phone_number char(11) not null, primary key(cust_id));
show tables;
select * from customers;
INSERT INTO customers(cust_name, phone_number)  VALUES("yamuna", "7424275662");
