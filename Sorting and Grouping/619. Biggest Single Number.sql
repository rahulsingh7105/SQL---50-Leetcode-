/*
https://leetcode.com/problems/biggest-single-number/description/?envType=study-plan-v2&envId=top-sql-50
*/
SELECT CASE
WHEN COUNT(1) = 1 THEN num ELSE NULL
END as num
FROM MyNumbers
GROUP BY num
ORDER BY 1 DESC
LIMIT 1;
