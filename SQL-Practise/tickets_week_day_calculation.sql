create table tickets
(
ticket_id varchar(10),
create_date date,
resolved_date date
);
delete from tickets;
insert into tickets values
(1,'2022-08-01','2022-08-03')
,(2,'2022-08-01','2022-08-12')
,(3,'2022-08-01','2022-08-16');
create table holidays
(
holiday_date date
,reason varchar(100)
);
delete from holidays;
insert into holidays values
('2022-08-11','Rakhi'),('2022-08-15','Independence day');

SELECT * from tickets;

SELECT * from holidays;

SELECT *,
DATEDIFF(DAY,create_date,resolved_date) as no_of_days
,DATEDIFF(DAY,create_date,resolved_date) - 2 * (DATEDIFF(WEEK ,create_date,resolved_date) ) as no_of_working_days
from tickets;
