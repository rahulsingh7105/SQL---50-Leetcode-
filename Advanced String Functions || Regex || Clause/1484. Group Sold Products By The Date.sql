/*
https://leetcode.com/problems/group-sold-products-by-the-date/?envType=study-plan-v2&envId=top-sql-50
*/
select 
    sell_date,
    count(distinct product) as num_sold, 
    group_concat(distinct product) as products 
from Activities 
group by sell_date;
