

-- refrential integrity constraint
create table emp(
    id int primary key ,
    name varchar(20) ,
    dept_id int references dept(dep_id)
)