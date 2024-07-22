## Day 10 - [window function]

### window function
* orderby is required
* 


### Dimension Modelleing 
- It will have facts and dimension tables .
- Before we create tables , we will create conceptual model .[ER Digram]
- Entity Relationship diagram 
- In the table columns are attributes .
- Each Table row is a entity . 
- In the dimension table we will keep only the attributes. 

orders -> Transaction Fact Table
cutomers -> Dimension Table 
product -> Dimension Table 


```sql
ROW_NUMBER() over (PARTITION by dept_id order by salary desc) rn

```

###