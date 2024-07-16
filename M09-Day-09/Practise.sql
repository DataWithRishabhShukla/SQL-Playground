SELECT * from orders;

SELECT * from employee;
select * from dept;

SELECT *, avg_salary from employee e
inner join 
(select dept_id , avg(salary) as avg_salary from employee GROUP by dept_id) a on 
e.dept_id = a.dept_id;

with dept_avg_sal as(
    select dept_id , avg(salary) as avg_salary from employee GROUP by dept_id
)
select *, avg_salary
from employee e inner join dept_avg_sal a  on e.dept_id = a.dept_id;

with dept_avg_sal as(
    select dept_id , avg(salary) as avg_salary from employee GROUP by dept_id
), total_salary as (select * from dept_avg_sal)
select a.dept_id, avg_salary
from employee e inner join dept_avg_sal a  on e.dept_id = a.dept_id;