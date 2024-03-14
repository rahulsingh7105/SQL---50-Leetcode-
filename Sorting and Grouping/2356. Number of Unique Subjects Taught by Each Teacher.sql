/*
https://leetcode.com/problems/number-of-unique-subjects-taught-by-each-teacher/description/?envType=study-plan-v2&envId=top-sql-50
*/

select distinct teacher_id, count(distinct subject_id) as cnt
from teacher 
group by teacher_id;
