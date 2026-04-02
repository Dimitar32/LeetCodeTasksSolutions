/* Write your T-SQL query statement below */
with cte as
(
    select 
        id, 
        student, 
        lead(id) over(order by id) as lead_id,
        lag(id) over(order by id) as lag_id
    from Seat
)
select 
        case 
            when id % 2 = 0
            then lag_id
            else isnull(lead_id, id)
            end
        as id,
        student
from cte
order by id