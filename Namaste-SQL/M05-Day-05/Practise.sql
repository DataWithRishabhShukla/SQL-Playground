-- Joins

SELECT * from RETURNS ;

SELECT * from orders ;

-- Inner Join 
SELECT 
-- count(*)
o.order_id ,
o.region,
o.order_date,
r.return_reason

 from orders o JOIN returns r on  o.order_id = r.order_id


-- Left Join 
SELECT 
--count(*) 
o.order_id ,
r.return_reason
from 
orders o left join returns r on o.order_id = r.order_id


SELECT 
--count(*) 
o.order_id ,
r.return_reason
from 
orders o left join returns r 
on o.order_id = r.order_id 
where r.order_id is null;


-- cross-join
SELECT * from dept ;
SELECT * from employee,dept;
SELECT * from employee join dept on 1=1;


-- Joining more than two table
SELECT * from people;

select 
o.order_id ,
r.return_reason,
p.manager
from orders o inner join [returns] r on o.order_id = r.order_id
join people p on p.region = o.region