/* Write your T-SQL query statement below */
declare @p_product_count int = (select count(product_key) from Product)

select customer_id
from(
    select c.customer_id
    from Customer c
    group by c.customer_id, c.product_key
) a
group by customer_id
having count(*) = @p_product_count