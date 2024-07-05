
select 
dept_id ,
STRING_AGG(emp_name,',') list_of_employee ,
string_agg(emp_name,',') WITHIN GROUP(order by emp_name desc)list_of_employee_sorted
from employee group by dept_id;

-- date functions
select order_id , order_date,
DATEPART(year,order_date) order_year,
DATEPART(MONTH,order_date) order_month,
DATEPART(DAY,order_date) order_day ,
DATEPART(WEEK,order_date) week_of_year ,
DATEPART(WEEKDAY ,order_date) week_day_of_year 
from orders;

select order_id , order_date,
DATEname(WEEKDAY ,order_date) week_name
from orders;

select order_id , order_date , ship_date ,
-- DATEADD(DAY, 5,order_date) ,
-- DATEADD(DAY, -5,order_date) ,
DATEDIFF(day,order_date, ship_date),
DATEDIFF(WEEK,order_date,ship_date)
from orders;

-- casewhen
SELECT  profit,
case 
when profit < 100 then 'Low Profit'
when profit < 200 then 'Med Profit'
when profit < 300 then 'High Profit'
else 'Very High Profit' END as profit_category

from orders;