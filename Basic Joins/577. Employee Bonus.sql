/*
https://leetcode.com/problems/employee-bonus/description/?envType=study-plan-v2&envId=top-sql-50
*/

# Write your MySQL query statement below
select name, bonus
from Employee e
left join bonus b
on e.empID = b.empID
where b.bonus is null or b.bonus < 1000
