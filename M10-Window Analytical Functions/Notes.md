## Day 10 - [window function]

### window function
* orderby is required
* 


### Dimension Modelleing 
- It will have facts and dimension tables .
- Before we create tables , we will create conceptual model .[ER Digram]
- Entity Relationship diagram.
- Table columns are **attributes** .
- Each Table is a **entity** . 
- **In the dimension table we will keep only the attributes**. 

orders   -> Transaction Fact Table
cutomers -> Dimension Table 
product  -> Dimension Table 

**Realtionship**
- Cardinality -> how tables are related ?

- 1 to 1
- 1 to many 
- 1 to one or many 
- 1 to zero or many 

**Key**
- Primary Key
- Camposite PK  
- Foreign Key 
- A part of composite PK

***Imp Points**
- Customer can place orders for mutilple location so keeping address as part of  cutomers dimension would not be ideal ?

- We should create another dimnsion for the location 

- int , varchar(20) , decimal(10,2)
- you can create a identity columns for auto-incrementing . 

```sql
create table cutomer(
    id int indentity(1,1)
)
```

- We have to populate the dim tables first then fact tables .



### Questions
- What are the different types of the fact table ? i.e transaction table 

```sql
ROW_NUMBER() over (PARTITION by dept_id order by salary desc) rn

```

###