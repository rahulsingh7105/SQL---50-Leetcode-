/*
https://leetcode.com/problems/delete-duplicate-emails/description/?envType=study-plan-v2&envId=top-sql-50
*/
# Solution - 1
delete p
from person p
join person p2
on p.email = p2.email and p.id > p2.id

# Solution - 2
DELETE p1
FROM Person p1, Person p2
WHERE p1.email = p2.email AND p1.id > p2.id
