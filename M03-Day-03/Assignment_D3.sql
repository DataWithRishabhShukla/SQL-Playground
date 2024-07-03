-- Note: please do not use any functions which are not taught in the class. you need to solve the questions only with the concepts that have been discussed so far.

-- 1- write a sql to get all the orders where customers name has "a" as second character and "d" as fourth character (58 rows)
select * from orders where customer_name like '_a_d%' ;
select count(*) from orders where customer_name like '_a_d%' ;

-- 2- write a sql to get all the orders placed in the month of dec 2020 (352 rows) 

select order_date from orders where order_date between '2020-12-01'  and '2020-12-31' ;
select count(*) from orders where order_date between '2020-12-01'  and '2020-12-31' ;

-- 3- write a query to get all the orders where ship_mode is neither in 
-- 'Standard Class' nor in 'First Class' and ship_date is after nov 2020 (944 rows)
select count(*) from orders where 
ship_mode not in ('First Class','Standard Class') and
ship_date >= '2020-12-01';



-- 4- write a query to get all the orders where customer name neither start 
-- with "A" and nor ends with "n" (9815 rows)
SELECT count(*) from orders where customer_name not LIKE 'A%' or customer_name not like '%n';
SELECT customer_name from orders where customer_name not LIKE 'A%' or customer_name not like '%n'

-- 5- write a query to get all the orders where profit is negative (1871 rows)
select profit from orders  where profit < 0;

-- 6- write a query to get all the orders where either quantity is less than 3 or profit is 0 (3348)
SELECT count(*) from orders where quantity < 3 or profit = 0


-- 7- your manager handles the sales for South region and he wants you to create a report 
-- of all the orders in his region where some discount is provided to the customers (815 rows)

select region , discount from orders  where discount != 0 and region = 'South';
select count(*) from orders  where discount != 0 and region = 'South'

-- 8- write a query to find top 5 orders with highest sales in furniture category 
SELECT top 5 category , sales  from orders where category = 'Furniture' order by sales DESC

-- 9- write a query to find all the records in technology and furniture category for 
-- the orders placed in the year 2020 only (1021 rows)

SELECT * from orders where category in ('Technology','Furniture') and 
order_date between '2020-01-01' and '2020-12-01' ;

SELECT count(*) from orders where category in ('Technology','Furniture') and 
order_date >= '2020-01-01' and order_date <= '2020-12-31' ;

SELECT count(*) from orders where category in ('Technology','Furniture') and 
order_date between '2020-01-01' and '2020-12-31' ;

-- 10-write a query to find all the orders where order date is in year 2020 
-- but ship date is in 2021 (33 rows)

SELECT COUNT(*)
--min(order_date), max(order_date)
--, ship_date 
from orders where 
order_date BETWEEN '2020-01-01' and '2020-12-31' 
AND ship_date BETWEEN '2021-01-01' and '2021-12-31' 