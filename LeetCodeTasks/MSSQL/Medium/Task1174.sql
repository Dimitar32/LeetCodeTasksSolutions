/* Write your T-SQL query statement below */
;with cte as
(
    select
            row_number() over(partition by customer_id order by order_date) as rn,
            customer_id,
            delivery_id,
            iif(order_date = customer_pref_delivery_date, 1, 0) as [immediate]
    from Delivery
)
select cast(
            cast(sum([immediate]) as decimal(9,4))
            /
            cast(count([immediate]) as decimal(9,4))
            as decimal(9,4)
            ) * 100
            as immediate_percentage 
from cte
where rn = 1
