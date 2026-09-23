drop database if exists e_commerce;
create database e_commerce;
use e_commerce;
-- CREATION OF TABLES
create table product (product_id int primary key,name varchar(50),price int ); 
create table orders(order_id int primary key,product_id int, order_status varchar(50));
create table sales(sale_id int primary key ,order_id int ,product_id int);
create table return_product( return_id int  primary key ,order_id int  ,reason_of_return varchar(500)); 
-- INSERTION OF PRODUCTS
insert into  product values(01,"iphone 18", 2000);
insert into  product values (02,"macbook M2", 3000);
insert into  product values (03,"airpod pro ", 150);
insert into  product values (04,"screen", 200);
insert into  product values (05,"power bank", 100);
-- INSERTION OF ORDERS
insert into  orders values (01,01, "delivered");
insert into  orders values (02,03, "not delivered");
insert into  orders values (03,02, " delivered");
insert into  orders values (04,03, " delivered");
insert into  orders values (05,04, "not delivered");
-- INSERTION OF SALES
insert into  sales values (01,03, 02);
insert into  sales values (02,04, 03);
insert into  sales values (03,01, 01);
insert into  sales values (04,02, 03);
insert into  sales values (05,05, 04);
-- INSERTION OF RETURN_PRODUCT
insert into  return_product values (01,03, "default");
insert into  return_product values (02,03, "broken");
insert into  return_product values (03,04, "default");
insert into  return_product values (04,05, "default");
insert into  return_product values (05,01, "broken");
select *from  product;
select *from  orders;
select *from  sales;
select *from  return_product;




