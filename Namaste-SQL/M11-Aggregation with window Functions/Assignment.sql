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
-- 2- https://datalemur.com/questions/sql-page-with-no-likes
SELECT p1.page_id FROM pages p1 LEFT JOIN page_likes p2 on p1.page_id =p2.page_id 
GROUP BY 
p1.page_id
HAVING count(p2.page_id) =0

-- 3- https://datalemur.com/questions/tesla-unfinished-parts
-- 4- https://datalemur.com/questions/laptop-mobile-viewership
-- 5- https://datalemur.com/questions/sql-average-post-hiatus-1
-- 6- https://datalemur.com/questions/teams-power-users
-- 7- https://datalemur.com/questions/completed-trades
-- 8- https://datalemur.com/questions/sql-avg-review-ratings
-- 9- https://datalemur.com/questions/click-through-rate
-- 10-https://datalemur.com/questions/second-day-confirmation