/*
https://leetcode.com/problems/replace-employee-id-with-the-unique-identifier/description/?envType=study-plan-v2&envId=top-sql-50
*/

# Solution - 1 
select EmployeeUNI.unique_id, name 
from Employees 
left join EmployeeUNI using(id)
# Solution - 2
SELECT e2.unique_id, e.name
FROM Employees as e
LEFT JOIN EmployeeUNI as e2
ON e.id = e2.id
