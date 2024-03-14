/*
https://leetcode.com/problems/product-sales-analysis-iii/description/?envType=study-plan-v2&envId=top-sql-50
*/
# Solution - 1
SELECT s1.product_id, s1.year AS first_year, s1.quantity, s1.price
FROM Sales s1
LEFT JOIN Sales s2 ON s1.product_id = s2.product_id AND s1.year > s2.year
WHERE s2.product_id IS NULL

# Solution - 2
select product_id, year as first_year, quantity, price
from sales
where (product_id, year) in (select product_id, MIN(year) from sales group by product_id);
