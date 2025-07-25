select p.product_name, sum(o.unit) as unit
from Products p
inner join Orders o on p.product_id = o.product_id
where year(order_date) = 2020 and month(order_date) = 2
group by p.product_name
having sum(o.unit) >= 100