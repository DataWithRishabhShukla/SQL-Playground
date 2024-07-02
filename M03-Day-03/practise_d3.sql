use namaste_sql;


select top 5 * from orders order by order_date ;

select * from returns;
SELECT * from orders;


SELECT distinct ship_mode, segment from orders;

--Filters 
SELECT * from orders where ship_mode = 'First Class';
SELECT * from orders where order_date = '2021-11-10';
SELECT * from orders where quantity = 5;

SELECT * from orders where order_date 
between '2020-12-08' and '2020-12-10' order by order_date ;


select distinct ship_mode 
from orders where ship_mode >= 'First Class';

select cast(GETDATE() as date) date_col ;


-- Like operator 
select order_id , order_date , customer_name from orders;


select order_id , order_date , customer_name from orders where customer_name like 'Chris%'; 
select order_id , order_date , customer_name from orders where customer_name like '%ld';

select order_id , order_date , customer_name from orders where customer_name like '%ven%';