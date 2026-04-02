/* Write your T-SQL query statement below */
with cte as
(
    select 
        product_id, 
        new_price as price, 
        row_number() over (partition by product_id order by change_date desc) rn
    from Products
    where change_date <= '2019-08-16'
)
select 
        product_id, 
        price
from cte
where rn = 1
union 
select distinct
        p.product_id,
        10
from Products p
left outer join cte c on p.product_id = c.product_id
where c.product_id is null
