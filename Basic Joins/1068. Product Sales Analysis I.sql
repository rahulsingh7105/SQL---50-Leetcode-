/*
https://leetcode.com/problems/product-sales-analysis-i/description/?envType=study-plan-v2&envId=top-sql-50
*/

# Write your MySQL query statement below
SELECT p.product_name, s.year, s.price
FROM SALES s
LEFT JOIN Product p
ON s.product_id = p.product_id
