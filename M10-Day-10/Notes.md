## Day 10 - [window function ]

### window function
* orderby is required
* 

```sql
ROW_NUMBER() over (PARTITION by dept_id order by salary desc) rn

```

###