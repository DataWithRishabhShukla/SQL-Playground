
-- row_number



select *
,sum(salary) over (partition by dept_id) as sum_sal
,sum(salary) over (partition by dept_id order by emp_id) as dept_running_sal
,sum(salary) over (order by emp_id) as running_sal
,max(salary) over (order by emp_id) table_sal_max
,max(salary) over (partition by dept_id) dept_dept_max
,max(salary) over (partition by dept_id order by emp_id) running_dept_max
from employee;

-- We don't need order by with max(salary), avg(salary) , sum(salary)
-- any kind of aggregation function do not require the  
    -- sum(salary) over (partition by dept_id) as sum_sal
    -- sum(salary) over (partition by dept_id order by emp_age) as running_sal
-- If we include the order by then it will give us the running salary 
-- Where as with lead, lag we needed the order by clause

-- what's difference between below 
    --,max(salary) over (order by emp_id) table_sal_max
    --,max(salary) over (partition by dept_id) dept_dept_max
    --,max(salary) over (partition by dept_id order by emp_id) running_dept_max