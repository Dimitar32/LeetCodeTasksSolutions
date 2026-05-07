/* Write your T-SQL query statement below */
select distinct
        t1.id,
        case 
            when t1.p_id is null
                then 'Root'
            when t3.p_id is not null
                then 'Inner'
            else 'Leaf'
        end as [type]
from Tree t1
left outer join Tree t3 on t1.id = t3.p_id