/* Write your T-SQL query statement below */
select 
        a.sell_date, 
        count(distinct a.product) as num_sold, 
        string_agg(a.product, ',') within group (order by product) as products
from 
    (
        select distinct sell_date, product
        from Activities
    ) a
group by a.sell_date