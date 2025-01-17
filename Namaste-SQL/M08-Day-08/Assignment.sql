-- Note: please do not use any functions which are not taught in the class. you need to solve the questions only with the concepts that have been discussed so far.

-- signup on https://datalemur.com/questions --its free

-- solve below questions. You can write SQLs and verify on the platform itself.

-- Note : The platform supports only postgreSQL so there may be few diffrences in functions. Listing down some important diffrences:

-- SQL server -> postgreSQL
-- to extract a part of the date
-- datepart(day,order_date) -> extract (day from order_date)

-- to convert datetime/timestamp field to date or any other type of type casting 
-- cast(order_date as date) -> order_date::date

-- 1- https://datalemur.com/questions/matching-skills
SELECT candidate_id FROM candidates 
where skill in ('Python','Tableau','PostgreSQL')
group by candidate_id having count(distinct skill) = 3
;
-- 2- https://datalemur.com/questions/sql-page-with-no-likes
SELECT p1.page_id  from pages p1 
LEFT JOIN  page_likes p2
on p1.page_id = p2.page_id 
where p2.page_id is null ;
-- 3- https://datalemur.com/questions/tesla-unfinished-parts
SELECT part , assembly_step FROM parts_assembly  where finish_date is null ;
-- 4- https://datalemur.com/questions/laptop-mobile-viewership
SELECT 
sum(case when device_type = 'laptop' then 1 else 0 end )as laptop_views,
sum(case when device_type in ('tablet','phone') then 1 else 0 end )as mobile_views
FROM viewership;

-- 5- https://datalemur.com/questions/sql-average-post-hiatus-1
SELECT user_id,
max(post_date) ,
min(post_date) ,
 max(post_date) - min(post_date)
FROM posts where  extract (year from post_date) = 2021
GROUP BY user_id  having count(*) >= 2;

-- 6- https://datalemur.com/questions/teams-power-users
SELECT sender_id,
count(*) message_count
FROM messages 
where extract (month from sent_date) = 8 and extract (year from sent_date) = 2022 
GROUP BY sender_id order by message_count desc limit 2 ;

-- 7- https://datalemur.com/questions/completed-trades
SELECT city 
, count(*) as total_orders
FROM trades t
JOIN users u on t.user_id =  u.user_id
where status = 'Completed'  group by city order by total_orders desc  limit 3;

-- 8- https://datalemur.com/questions/sql-avg-review-ratings
SELECT
EXTRACT( month from submit_date) mth
, product_id product
, round(avg(stars) ,2)as avg_stars
FROM reviews
group by EXTRACT( month from submit_date),product_id
order by mth ,product
;

-- 9- https://datalemur.com/questions/click-through-rate

SELECT app_id 
-- ,sum(case when event_type ='impression' then 1 else 0 end) num_impression
-- ,sum(case when event_type ='click' then 1 else 0 end) num_click
, round(100.0 * sum(case when event_type ='click' then 1 else 0 end)/sum(case when event_type ='impression' then 1 else 0 end),2) ctr
FROM events where extract(year from timestamp) = 2022 group by app_id ;

-- 10-https://datalemur.com/questions/second-day-confirmation
SELECT 
user_id
--, e.email_id
-- , signup_date
-- , action_date
-- , extract(day from signup_date)
-- , extract(day from action_date)
FROM 
emails e inner join texts t 
on e.email_id = t.email_id
where signup_action = 'Confirmed' and extract(day from action_date) - extract(day from signup_date) =1 
;
