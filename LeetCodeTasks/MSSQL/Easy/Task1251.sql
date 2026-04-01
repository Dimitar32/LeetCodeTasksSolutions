/* Write your T-SQL query statement below */
select p.product_id, coalesce(cast((cast(sum((p.price * u.units)) as decimal(9,2))/cast(sum(u.units) as decimal(9, 2))) as decimal(9,2)), 0) 'average_price'
from Prices p
left outer join UnitsSold u on p.product_id = u.product_id
where (u.purchase_date between p.start_date and p.end_date) or u.purchase_date is null
group by p.product_id