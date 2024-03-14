/*
https://leetcode.com/problems/not-boring-movies/description/?envType=study-plan-v2&envId=top-sql-50
*/
# Solution - 1
select id, movie, description, rating
from cinema
where id%2 <> 0 and description <> "boring"
order by rating desc
# Solution - 2
select * from Cinema
where id%2 = 1 and description<>"boring"
order by rating DESC;
