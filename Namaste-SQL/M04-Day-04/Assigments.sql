-- Note: please do not use any functions which are not taught in the class. you need to solve the questions only with the concepts that have been discussed so far.

-- 1- write a update statement to update city as null for order ids :  CA-2020-161389 , US-2021-156909

select order_id,city from orders WHERE order_id in('CA-2020-161389','US-2021-156909') ;

update  orders set city = NULL where order_id in('CA-2020-161389','US-2021-156909') ;
select order_id,city from orders WHERE order_id in('CA-2020-161389','US-2021-156909') ;

-- 2- write a query to find orders where city is null (2 rows)
select * from orders where city is NULL;

-- 3- write a query to get total profit, first order date and latest order date for each category

select 
-- order_id,
category ,
sum(profit) sum_profit,
min(order_date ) first_order_date,
max(order_date) latest_order_date
from orders
group by category

-- 4- write a query to find sub-categories where average profit is more than the half of the max profit in that sub-category

SELECT  sub_category , profit from orders;

select sub_category, 
AVG(profit) avg_profit ,
(MAX(profit)/2) max_profit
from orders GROUP BY sub_category having AVG(profit) > MAX(profit)/2

-- 5- create the exams table with below script;
create table exams (student_id int, subject varchar(20), marks int);

insert into exams values (1,'Chemistry',91),(1,'Physics',91),(1,'Maths',92)
,(2,'Chemistry',80),(2,'Physics',90)
,(3,'Chemistry',80),(3,'Maths',80)
,(4,'Chemistry',71),(4,'Physics',54)
,(5,'Chemistry',79);

-- Write a query to find students who have got same marks in Physics and Chemistry.
select * from exams WHERE subject in ('Physics', 'Chemistry') ;

SELECT student_id 
from exams WHERE subject in ('Physics', 'Chemistry') 
group by student_id 
having count(*) = 2 and min(marks) = max(marks)

-- 6- write a query to find total number of products in each category.
SELECT 
sub_category,
count(distinct product_id)
from orders GROUP by sub_category

-- 7- write a query to find top 5 sub categories in west region by total quantity sold

select 
top 5
sub_category, 
--region,quantity 
sum(quantity) total_quatity

from orders WHERE lower(region) = 'west'
GROUP by sub_category ORDER by total_quatity DESC

-- 8- write a query to find total sales for each region and ship mode combination for orders in year 2020

select 
region,
ship_mode,
sum(sales) total_sales
--order_date
from orders
where order_date BETWEEN '2020-01-01' and '2020-12-31'
GROUP by region , ship_mode