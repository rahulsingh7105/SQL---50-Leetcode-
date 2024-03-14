/*
https://leetcode.com/problems/movie-rating/description/?envType=study-plan-v2&envId=top-sql-50
*/
SELECT results 
FROM (
    (SELECT u.name AS results, COUNT(mr.rating) AS rating_count
    FROM users u 
    RIGHT JOIN movierating mr ON u.user_id = mr.user_id 
    GROUP BY mr.user_id 
    ORDER BY rating_count DESC, u.name ASC 
    LIMIT 1) 

    UNION ALL

    (SELECT m.title AS results, AVG(mr.rating) AS avg_rating
    FROM movies m
    RIGHT JOIN movierating mr ON m.movie_id = mr.movie_id 
    WHERE DATE_FORMAT(mr.created_at, '%Y-%m') = '2020-02' 
    GROUP BY m.movie_id 
    ORDER BY avg_rating DESC, m.title ASC 
    LIMIT 1)
) AS tmp;
