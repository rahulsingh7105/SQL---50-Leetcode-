/*
https://leetcode.com/problems/queries-quality-and-percentage/description/?envType=study-plan-v2&envId=top-sql-50
*/
# Solution - 1
SELECT query_name, 
    ROUND((SUM(rating/position)/COUNT(query_name)),2) AS quality,            
    ROUND(AVG(CASE WHEN rating < 3 THEN 1 ELSE 0 END)*100,2) AS poor_query_percentage 
FROM Queries 
where query_name is not null
GROUP BY query_name;

# Solution - 2
SELECT query_name,  
       ROUND(AVG(rating / position), 2) AS quality,  
       ROUND(AVG(rating < 3) * 100, 2) AS poor_query_percentage
FROM Queries
WHERE query_name IS NOT NULL
GROUP BY query_name
