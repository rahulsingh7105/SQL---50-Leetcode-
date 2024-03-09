/*
https://leetcode.com/problems/managers-with-at-least-5-direct-reports/description/?envType=study-plan-v2&envId=top-sql-50
*/

# Solution - 1
  
select name 
from employee 
where id in (select managerId from employee group by managerId having count(*)>4)

  
#Solution - 2
  
SELECT e.name 
FROM Employee e 
inner JOIN Employee e2 
ON e.id = e2.managerId
GROUP BY e2.managerId
HAVING COUNT(e2.managerId) >= 5
