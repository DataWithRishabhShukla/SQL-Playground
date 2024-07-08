## Day 7 - [String Functions , ]

### String Functions
- STRING_AGG(emp_name,',') list_of_employee
- string_agg(emp_name,',') WITHIN GROUP(order by emp_name desc)list_of_employee_sorted
- CHARINDEX('C',customer_name ) C_index, -- returns 0 if char not found
- len(customer_name) col_legth,
- left(customer_name,4) let_char,
- right(customer_name,5) right_char,
- SUBSTRING(customer_name,0,5) substr,
- CONCAT(order_id,' ',customer_name) concated_name
- REPLACE(order_id,'CA' ,'PB') replaced_char 
- trim(customer_name) remove_space,

```sql
select 
customer_name,
-- will replace all leading and trailing functions 
trim(customer_name) remove_space,

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
```

### NULL handling functions 
- isnull(name,'unknown')
- coalesce(name,city,number)
```sql
select 
isnull(name,'unknown'),
coalesce(name,city,number)

```


**union & union all**
- Number of column and data type of columns should match
- It will remove the duplicates 
- Union all will keep the duplicates records

**intersect**
- gives the common rows between two tables

```sql
select * from table_a
intersect
select * from table_b
```

**except**
- gives the records from table_a which are not present in table_a

```sql
select * from table_a
except
select * from table_b
```