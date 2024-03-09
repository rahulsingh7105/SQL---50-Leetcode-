/*
https://leetcode.com/problems/customer-who-visited-but-did-not-make-any-transactions/?envType=study-plan-v2&envId=top-sql-50
*/

# Write your MySQL query statement below
SELECT v.customer_id , COUNT(v.visit_id) as count_no_trans
FROM Visits v
LEFT JOIN Transactions t
ON v.visit_id = t.visit_id
WHERE t.amount is NULL
GROUP BY v.customer_id;
