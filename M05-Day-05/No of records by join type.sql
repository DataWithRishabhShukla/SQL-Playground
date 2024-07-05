
create table t1(id INT );
create table t2(id INT );

insert into t1 VALUES (1),(2),(3),(4),(5);

insert into t2 VALUES (1),(1),(2),(2),(3),(3),(4),(4),(5),(5);

select * from t1;
SELECT * from t2;

select count(*) from t1 join t2 on t1.id = t2.id;