/*
https://leetcode.com/problems/confirmation-rate/?envType=study-plan-v2&envId=top-sql-50
*/
# Write your MySQL query statement below
select s.user_id, ifnull(round(sum(action = 'confirmed')/count(*),2),0.00) as confirmation_rate
from signups s
left join confirmations c
on s.user_id = c.user_id
group by s.user_id
