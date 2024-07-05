## Day 4 - [Data Aggregation , Joins]

### Joins
- Inner join - common rows of both tables 
- Left join  - all the matching and non matching rows of left table

### order of execution 
- from 
- join 
- where 

### full outer join
```sql
select * from a full outer join b on a.id = b.id 
```
- maching records 
- non-matching records of left table with col value from right as null
- non-matching records of right table with col value from left as null

### cross-join
- select * from table_1 join table_2
- SELECT * from employee,dept;
- SELECT * from employee join dept on 1=1;

```sql
id, sales
1, 100
2, sales 

id , reason
1, defective
2, wrong product 

select * from table_1 join table_2
Reutls in cross join 4 rows m*n rows 

```

### duplicates on key in joins 
- 