/*
https://leetcode.com/problems/fix-names-in-a-table/?envType=study-plan-v2&envId=top-sql-50
*/

# Solution - 1
select user_id, concat(upper(substr(name, 1, 1)), lower(substr(name, 2))) as name
from Users 
order by user_id
  
# Solution - 2
SELECT user_id, CONCAT(UPPER(LEFT(name, 1)), LOWER(SUBSTRING(name, 2))) AS name
FROM Users
ORDER BY user_id;
