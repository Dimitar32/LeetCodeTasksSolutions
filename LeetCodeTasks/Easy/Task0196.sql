/* Write your T-SQL query statement below */
;with cte as(
    select p.email, dense_rank() over (partition by p.email order by p.id) rn, p.id
    from Person p
)
delete from Person
where id in(select id from cte where rn > 1)