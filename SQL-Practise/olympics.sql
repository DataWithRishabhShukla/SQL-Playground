use namaste_sql;

CREATE TABLE events (
ID int,
event varchar(255),
YEAR INt,
GOLD varchar(255),
SILVER varchar(255),
BRONZE varchar(255)
);

delete from events;

INSERT INTO events VALUES (1,'100m',2016, 'Amthhew Mcgarray','donald','barbara');
INSERT INTO events VALUES (2,'200m',2016, 'Nichole','Alvaro Eaton','janet Smith');
INSERT INTO events VALUES (3,'500m',2016, 'Charles','Nichole','Susana');
INSERT INTO events VALUES (4,'100m',2016, 'Ronald','maria','paula');
INSERT INTO events VALUES (5,'200m',2016, 'Alfred','carol','Steven');
INSERT INTO events VALUES (6,'500m',2016, 'Nichole','Alfred','Brandon');
INSERT INTO events VALUES (7,'100m',2016, 'Charles','Dennis','Susana');
INSERT INTO events VALUES (8,'200m',2016, 'Thomas','Dawn','catherine');
INSERT INTO events VALUES (9,'500m',2016, 'Thomas','Dennis','paula');
INSERT INTO events VALUES (10,'100m',2016, 'Charles','Dennis','Susana');
INSERT INTO events VALUES (11,'200m',2016, 'jessica','Donald','Stefeney');
INSERT INTO events VALUES (12,'500m',2016,'Thomas','Steven','Catherine');

select * from events;


with winner as (
SELECT distinct SILVER from events
union 
select distinct bronze from events)

SELECT GOLD,count(*) as number_of_gold  from events where gold not in (select * from winner) GROUP by GOLD  ; 

select * from events;

SELECT g.* ,s.SILVER 
--,b.BRONZE 
from events g 
left join events s on g.GOLD = s.SILVER  
left JOIN events b on g.GOLD = b.BRONZE   ;

SELECT g.GOLD , count(*)
--,b.BRONZE 
from events g 
left join events s on g.GOLD = s.SILVER
where s.SILVER is NULL
GROUP by g.GOLD 