use namaste_sql;

create table amazon_orders
(
order_id integer,
order_date date,
product_name varchar(100),
total_price decimal(6,2),
payment_method varchar(20)
);


insert into amazon_orders values(1,'2022-10-01','Baby Milk',30.5,'UPI');
insert into amazon_orders values(2,'2022-10-02','Baby Powder',130,'Credit Card');

insert into amazon_orders values(3,'2022-10-01','Baby cream',30.5,'UPI');
insert into amazon_orders values(4,'2022-10-02','Baby soap',130,'Credit Card');

--to delete data
--delete from amazon_orders;
--SQL--> structured query language

-- DQL -> data querying language
select * from amazon_orders;
--limiting columns or selecting specific columns
select product_name,order_date,total_price from amazon_orders;
--limiting rows
select top 1 * from amazon_orders;
--data sorting
select * from amazon_orders
order by order_date desc,product_name desc,payment_method;

/*
Notes:
'null' != NULL

*/

se