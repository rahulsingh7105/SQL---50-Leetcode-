/*
https://leetcode.com/problems/triangle-judgement/description/?envType=study-plan-v2&envId=top-sql-50
*/
SELECT *, IF(x+y>z and y+z>x and z+x>y, "Yes", "No") as triangle 
FROM Triangle;
