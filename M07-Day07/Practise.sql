-- string functions
select 
customer_name,

-- replace will replace all occurance of char
REPLACE(order_id,'CA' ,'PB') replaced_char ,

CONCAT(order_id,' ',customer_name) concated_name,
order_id + ' ' +customer_name concated_2_name,

-- returns 0 if char not found
-- index starts from 1
CHARINDEX('n',customer_name) first_n_index,
CHARINDEX('n',customer_name,CHARINDEX('n',customer_name)+1) second_n_index,

CHARINDEX(' ',customer_name ) space_index,
CHARINDEX('C',customer_name ) C_index, 

len(customer_name) col_legth,

left(customer_name,4) let_char,
right(customer_name,5) right_char,

SUBSTRING(customer_name,0,5) substr,
SUBSTRING(order_id,4,4) substr2 

from orders;

-- NULL handling functions
SELECT 
order_id,
ISNULL(city,'unknown'),
coalesce(city,state,'unknown') ,
city
from orders where city is NULL;

-- Numeric function 
SELECT
sales ,
cast(sales as int) sales_int,
ROUND(sales,2) round_sales
 from orders;

-- SET functions 
union 
- number of column and data type of columns should match
- It will remove the duplicates 
- Union all will keep the duplicates records