/*
https://leetcode.com/problems/second-highest-salary/description/?envType=study-plan-v2&envId=top-sql-50
*/
SELECT  MAX(SALARY) AS SecondHighestSalary 
FROM EMPLOYEE 
WHERE SALARY <>(SELECT MAX(SALARY) FROM EMPLOYEE);
