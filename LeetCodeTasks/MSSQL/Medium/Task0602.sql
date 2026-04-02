/* Write your T-SQL query statement below */
;with cte_requester as 
(
    select count(requester_id) count_requester_id, requester_id
    from RequestAccepted
    group by requester_id
),
cte_accepter as
(
    select count(accepter_id) count_accepter_id, accepter_id
    from RequestAccepted
    group by accepter_id
)
select top 1
        isnull(r.requester_id, a.accepter_id) as id,
        (isnull(r.count_requester_id, 0) + isnull(a.count_accepter_id, 0)) as num
from cte_requester r
full outer join cte_accepter a on r.requester_id = a.accepter_id
order by num desc
