## Day 8 - [Sub-query , CTEs ]

### sub-query
* It can be used in select, where , having 

### CTE - common table expression
* Query looks more strucutred 
* Removes the redundency 


```sql
with dept_avg_sal as(
    select dept_id , avg(salary) as avg_salary from employee GROUP by dept_id
)
select *, avg_salary
from employee e inner join dept_avg_sal a  on e.dept_id = a.dept_id;
```

###