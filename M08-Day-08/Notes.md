## Day 8 - [Views ]

### Views
```sql
create view south_data as 
select * from orders where region = 'West'
```

### Referential Integrity Constraint 
- FK should be primary key in referenced table 
- 

```sql

create table emp(
    id int primary key ,
    name varchar(20) ,
    dept_id int references dept(dep_id)
)

```