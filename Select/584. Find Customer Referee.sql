/*
https://leetcode.com/problems/find-customer-referee/description/?envType=study-plan-v2&envId=top-sql-50
*/

# Write your MySQL query statement below
SELECT name FROM Customer WHERE IFNULL (referee_id, 0) <> 2
