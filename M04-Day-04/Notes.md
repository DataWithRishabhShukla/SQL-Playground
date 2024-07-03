<!-- This is a comment -->


## Day 4 - [SQL Filters, Aggregation ]

### Null Handling
- null is unknown value 
    - city = Null -> does not work use is null
    - null == null -> retruns False  
### Aggregation 
- count() , sum() , max() , min() , avg()
- having will contained the filter with aggregated value - avg() > <some_amount>
- where will be filtering the data at the row level
- same query can have where 

### Order of Execution 
- From 
- where 
- group by 
- having 
- select 
- order by 
- limit