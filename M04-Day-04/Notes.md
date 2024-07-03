<!-- This is a comment -->


## Day 4 - [SQL Filters, Aggregation ]

### Null Handling
- null is unknown value 
    - city = Null -> does not work use is null
    - null == null -> retruns False  
### Aggregation 
- count() , sum() , max() , min() , avg()
- All the aggregate function will ignore null values 

```sql
__region,sales__
east  , 100
east  , null
east  , 200

Query : select region, avg(sales) from orders group by region 
Op    : east , 150
Explain: null row will be ingnored by aggregate function 
```

```
region,sales
east  , 100
east  , null
east  , 200

Query : select region, avg(sales) from orders group by region 
Op    : east , 150
Explain: null row will be ingnored by aggregate function 
```
- count()
    - count(category)
    - count(distinct category)
    - count(1) 
    - count(*)

- having will contained the filter with aggregated value 
    - avg(sales) = <some_amount>
    - sum(sales) = <some_amount>
    - max(order_date) > <some_date>
- where will be filtering the data at the row level
- same query can have where and having 

### Order of Execution 
- From 
- where 
- group by 
- having 
- select 
- order by 
- limit