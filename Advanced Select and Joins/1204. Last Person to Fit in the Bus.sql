/*
https://leetcode.com/problems/last-person-to-fit-in-the-bus/description/?envType=study-plan-v2&envId=top-sql-50
*/

SELECT q.person_name
FROM Queue q 
JOIN Queue q2 
ON q.turn >= q2.turn
GROUP BY q.turn
HAVING SUM(q2.weight) <= 1000
ORDER BY SUM(q2.weight) DESC
LIMIT 1
