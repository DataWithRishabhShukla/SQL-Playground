-- Note: please do not use any functions which are not taught in the class. you need to solve the questions only with the concepts that have been discussed so far.

-- 1- write a sql to get all the orders where customers name has "a" as second character and "d" as fourth character (58 rows)
select * from orders where customer_name like '_a_d%' ;
select count(*) from orders where customer_name like '_a_d%' ;

-- 2- write a sql to get all the orders placed in the month of dec 2020 (352 rows) 

select order_date from orders where order_date between '2020-12-01'  and '2020-12-31' ;
select count(*) from orders where order_date between '2020-12-01'  and '2020-12-31' ;

-- 3- write a query to get all the orders where ship_mode is neither in 
-- 'Standard Class' nor in 'First Class' and ship_date is after nov 2020 (944 rows)

-- 4- write a query to get all the orders where customer name neither start 
-- with "A" and nor ends with "n" (9815 rows)

-- 5- write a query to get all the orders where profit is negative (1871 rows)

-- 6- write a query to get all the orders where either quantity is less than 3 or profit is 0 (3348)

-- 7- your manager handles the sales for South region and he wants you to create a report 
-- of all the orders in his region where some discount is provided to the customers (815 rows)

-- 8- write a query to find top 5 orders with highest sales in furniture category 

-- 9- write a query to find all the records in technology and furniture category for 
-- the orders placed in the year 2020 only (1021 rows)

-- 10-write a query to find all the orders where order date is in year 2020 
-- but ship date is in 2021 (33 rows)