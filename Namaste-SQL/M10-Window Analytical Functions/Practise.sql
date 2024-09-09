
-- row_number

select salary ,
ROW_NUMBER() over (order by salary desc) rn
from employee ;

select emp_name,dept_id,salary ,
ROW_NUMBER() over (PARTITION by dept_id order by salary desc) rn,
rank() over (PARTITION by dept_id order by salary desc) rnk
from employee ;

select emp_name,dept_id,salary ,
ROW_NUMBER() over (order by salary desc) rn,
rank() over (order by salary desc) rnk,
dense_rank() over (order by salary desc) dns_rnk
from employee ;

select * from orders ;


