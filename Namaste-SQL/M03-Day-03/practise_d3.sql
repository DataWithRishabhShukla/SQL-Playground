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
select order_id , order_date , customer_name from orders where customer_name like '_l%';

-- customer name should start with C and second character shoul be a,l
select order_id , order_date , customer_name from orders where customer_name like 'C[al]%';
select order_id , order_date , customer_name from orders where customer_name like 'C[a-d]%' order by customer_name;
select order_id , order_date , customer_name from orders where customer_name like 'C[a-z]%';

select order_id , order_date , customer_name from orders where order_id like 'CA-201[7-9]%' order by order_id;

-- second chracter should not [^albo]
select order_id , order_date , customer_name from orders where customer_name like 'C[^albo]%';
select order_id , order_date , customer_name from orders where customer_name like 'C[^a-z]%';