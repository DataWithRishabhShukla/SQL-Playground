## Day 6 - [Date Functions, String Functions , Case when]

### self-join
-
-



### String Functions
- STRING_AGG(emp_name,',') list_of_employee
- string_agg(emp_name,',') WITHIN GROUP(order by emp_name desc)list_of_employee_sorted


### Date Functions
**DATEPART**
- Returns the values in integer format
- DATEPART(year,order_date) order_year
- DATEPART(year,order_date) order_year,
- DATEPART(MONTH,order_date) order_month,
- DATEPART(DAY,order_date) order_day
- DATEPART(WEEK,order_date) week_of_year 
- DATEPART(WEEKDAY ,order_date) week_day_of_year 

**DATENAME**
- Returns the values in string format
- DATEPART(WEEKDAY ,order_date) week_day_of_year -> Wednesday

**DATEADD**
- DATEADD(DAY, 5,order_date)
- DATEADD(DAY, -5,order_date)

**DATEDIFF**
- DATEDIFF(WEEK,order_date,ship_date)
- DATEDIFF(DAY,order_date,ship_date)

**CASEWHEN**
- case when then else end 
- If one condition is true then it does not go to next one.
```sql
SELECT  profit,
case 
when profit < 100 then 'Low Profit'
when profit < 200 then 'Med Profit'
when profit < 300 then 'High Profit'
else 'Very High Profit' END as profit_category
from orders;
```