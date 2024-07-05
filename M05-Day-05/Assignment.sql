-- Note: please do not use any functions which are not taught in the class. you need to solve the questions only with the concepts that have been discussed so far.

-- 1- write a query to get region wise count of return orders
select region , count(*) ,count(1) as total_count from 
orders o join [returns] r on  o.order_id = r.order_id 
GROUP by region

-- 2- write a query to get category wise sales of orders that were not returned
SELECT 
category,
sum(sales) as total_sale
from orders o left join [returns] r on o.order_id = r.order_id 
where r.order_id is null 
GROUP by category

-- 3- write a query to print dep name and average salary of employees in that dep .

select  dep_name , avg(salary) 
from employee left join dept on dept_id = dep_id
 GROUP by dep_name  ;

select * from dept ;

-- 4- write a query to print dep names where none of the emplyees have same salary.


select dept_id from employee 
group by dept_id having count(*) = count(distinct salary)


-- 5- write a query to print sub categories where we have all 3 kinds of returns (others,bad quality,wrong items)
SELECT 
sub_category , 
count(distinct return_reason)
from orders o join [returns] r on o.order_id = r.order_id
GROUP by sub_category having count(distinct return_reason) = 3

-- 6- write a query to find cities where not even a single order was returned.
SELECT city ,count(*) from orders o 
group by city ;

SELECT city ,o.order_id ,r.order_id from orders o left join [returns] r on o.order_id = r.order_id ;
SELECT city ,count(*) from orders o left join [returns] r on o.order_id = r.order_id
group by city having count(r.order_id) = 0

-- 7- write a query to find top 3 subcategories by sales of returned orders in east region
select Top 3 sub_category , sum(sales) return_sales

 from orders o  join [returns] r on o.order_id = r.order_id 
 where region = 'east'
 GROUP by sub_category ORDER by return_sales DESC

-- 8- write a query to print dep name for which there is no employee
SELECT dep_name
from dept  left join employee 
on dep_id = dept_id 
where dept_id is null ;

select distinct dept_id from employee;


-- 9- write a query to print employees name for dep id is not avaiable in dept table
SELECT * from employee left join dept on dept_id = dep_id 
where dep_id is null 


