/*
https://leetcode.com/problems/invalid-tweets/description/?envType=study-plan-v2&envId=top-sql-50
*/

# Write your MySQL query statement below
SELECT tweet_id 
FROM Tweets 
WHERE CHAR_LENGTH(content) > 15
