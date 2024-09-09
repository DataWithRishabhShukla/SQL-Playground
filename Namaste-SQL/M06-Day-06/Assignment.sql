-- Note: please do not use any functions which are not taught in the class.
--  you need to solve the questions only with the concepts that have been discussed so far.

-- Run the following command to add and update dob column in employee table
-- alter table  employee add dob date;
-- update employee set dob = dateadd(year,-1*emp_age,getdate())

-- 1- write a query to print emp name , their manager name and diffrence in their age (in days)
-- for employees whose year of birth is before their managers year of birth

select e1.emp_name , e2.emp_name manager_name ,
DATEDIFF(DAY,e1.dob, e2.dob) as difference_in_age
from employee e1 join employee e2 on e1.manager_id = e2.emp_id
where DATEPART(YEAR,e1.dob) < DATEPART(YEAR,e2.dob)
;

-- 2- write a query to find subcategories who never had any return orders in the month of november (irrespective of years)
select  sub_category, 
--DATEPART(MONTH,order_date) ,r.order_id
count(*)
from orders o left join [returns] r on o.order_id=r.order_id where DATEPART(MONTH,order_date) = 11
GROUP by sub_category 
having count(r.order_id) = 0


-- 3- orders table can have multiple rows for a particular order_id when customers buys more than 1 product in an order.
-- write a query to find order ids where there is only 1 product bought by the customer.
select 
order_id , count(*)
--product_id
from orders GROUP by order_id having count( product_id) =1

-- 4- write a query to print manager names along with the comma separated list(order by emp salary) of 
-- all employees directly reporting to him.
SELECT 
manager_id ,
STRING_AGG(emp_name,',') WITHIN GROUP(order by salary) emp_list
from employee GROUP by manager_id

-- 5- write a query to get number of business days between order_date and ship_date (exclude weekends). 
-- Assume that all order date and ship date are on weekdays only
Select
order_date , ship_date ,
DATEDIFF(day,order_date,ship_date) - 2*DATEDIFF(WEEK,order_date,ship_date) as business_days
from  orders


-- 6- write a query to print 3 columns : category, total_sales and (total sales of returned orders)
select 
category,
sum(sales) total_sales,
sum(case when r.order_id is null then 0 else sales end) returnedd_sales
from orders o left join  [returns] r on o.order_id = r.order_id
GROUP by category;


-- 7- write a query to print below 3 columns
-- category, total_sales_2019(sales in year 2019), total_sales_2020(sales in year 2020)

select category ,
sum(case when datepart(YEAR,order_date) = 2019 then sales else 0 end )  total_sales_2019 ,
sum(case when datepart(YEAR,order_date) = 2020 then sales else 0 end )  total_sales_2020 
from orders 
where datepart(YEAR,order_date) in ('2019','2020')
group by category
-- 8- write a query print top 5 cities in west region by average no of days between order date and ship date.
select  
top 5
--region,
city ,
avg(DATEDIFF(day,order_date,ship_date) ) avg_days
from orders where region = 'west' GROUP by city order by avg_days desc
-- 9- write a query to print emp name, manager name and senior manager name (senior manager is manager's manager)

select 
e1.emp_name emp_name,
e2.emp_name manager_name,
e3.emp_name senior_manager_name

from employee e1  join employee e2 on e1.manager_id = e2.emp_id 
join employee e3 on e2.manager_id = e3.emp_id 


















