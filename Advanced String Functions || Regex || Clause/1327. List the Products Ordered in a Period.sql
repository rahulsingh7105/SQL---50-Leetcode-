/*
https://leetcode.com/problems/list-the-products-ordered-in-a-period/description/?envType=study-plan-v2&envId=top-sql-50
*/
# Solution - 1
select p.product_name, sum(o.unit) as unit
from products p
left join orders o
on p.product_id = o.product_id
WHERE EXTRACT(MONTH FROM order_date) = 2 
AND EXTRACT(YEAR FROM order_date) = 2020
group by p.product_id
having unit >= 100;

# Solution - 2
select p.product_name, sum(o.unit) as unit
from orders o join products p on p.product_id = o.product_id
where month(o.order_date) = 2 and year(o.order_date) = 2020
group by p.product_name
having sum(o.unit) >= 100 
