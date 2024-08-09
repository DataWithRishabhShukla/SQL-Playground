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
-- 8- https://datalemur.com/questions/sql-avg-review-ratings
-- 9- https://datalemur.com/questions/click-through-rate
-- 10-https://datalemur.com/questions/second-day-confirmation