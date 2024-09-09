#### Day 3 - [where , between ,like ,in]

- customer name should start with C and second character shoul be a,l
    - select order_id , order_date , customer_name from orders where customer_name like 'C[al]%';

- how to serch for the % in input 
    - select * from orders where name like 'A%n' escape '%'
    - We can add the multiple escape characters
    - select * from orders where name like 'A%n' escape '%'