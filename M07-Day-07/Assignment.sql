


-- 1- write a query to produce below output from icc_world_cup table.
-- team_name, no_of_matches_played , no_of_wins , no_of_losses

SELECT * from icc_world_cup;

with cte as (
select 
    Team_1 team_name ,  
    case 
        when Team_1 = Winner then 1 else 0 end winner_team
from icc_world_cup union
select 
    Team_2 team_name ,  
    case 
        when Team_2 = Winner then 1 else 0 end winner_team
 from icc_world_cup) 
 
select 
team_name ,
count(*) as no_of_matches_played,
count(*) - sum(winner_team) as no_of_losses,
sum(winner_team) as  no_of_wins
from cte group by team_name ;

-- 2- write a query to print first name and last name of a customer using orders table
--(everything after first space can be considered as last name)
-- customer_name, first_name,last_name

select 
customer_name ,
SUBSTRING(customer_name,0,CHARINDEX(' ',customer_name)) first_name ,
len(SUBSTRING(customer_name,0,CHARINDEX(' ',customer_name))) ,
SUBSTRING(customer_name,CHARINDEX(' ',customer_name),len(customer_name)) last_name 

from orders;

-- Run below script to create drivers table:


-- 3- write a query to print below output using drivers table. 
-- Profit rides are the no of rides where end location of a ride is same as start location of immediate next ride for a driver
-- id, total_rides , profit_rides
-- dri_1,5,1
-- dri_2,2,0

SELECT * from drivers ;

with data as (
select * , 
lead(start_loc) over (PARTITION by id order by start_time ) next_loc
from drivers)
SELECT 
id , 
COUNT(1) as total_rides 
,sum(case when end_loc=next_loc then 1 else 0 end) profit_rides

from data GROUP by id
 ;


-- 4- write a query to print customer name and no of occurence of character 'n' in the customer name.
-- customer_name , count_of_occurence_of_n

select 
customer_name ,
len(customer_name)- len(REPLACE(customer_name,'n','' )) no_of_n
from orders;

-- 5-write a query to print below output from orders data. example output
-- hierarchy type,hierarchy name ,total_sales_in_west_region,total_sales_in_east_region
-- category , Technology, ,
-- category, Furniture, ,
-- category, Office Supplies, ,
-- sub_category, Art , ,
-- sub_category, Furnishings, ,
-- --and so on all the category ,subcategory and ship_mode hierarchies 

-- 6- the first 2 characters of order_id represents the country of order placed . 
-- write a query to print total no of orders placed in each country
-- (an order can have 2 rows in the data when more than 1 item was purchased in the order but it should be considered as 1 order)
select 

SUBSTRING(order_id,1,2) as country_code
,count(distinct order_id) as no_of_orders
from orders
GROUP by SUBSTRING(order_id,1,2)
 ;

select left(order_id,2) as country, count(distinct order_id) as total_orders
from orders 
group by left(order_id,2)
