/*
https://leetcode.com/problems/count-salary-categories/?envType=study-plan-v2&envId=top-sql-50
*/
select "Low Salary" as category,
count(income) as accounts_count
from accounts 
where income < 20000
union
select "Average Salary" as category,
count(income) as accounts_count
from accounts 
where income >= 20000 and income <= 50000
union
select "High Salary" as category,
count(income) as accounts_count
from accounts 
where income > 50000
