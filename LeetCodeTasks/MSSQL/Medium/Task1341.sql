/* Write your T-SQL query statement below */
;with cte_max_count_ratings as
(
    select top 1 count(mr.rating) as c_rating, u.name
    from MovieRating mr 
    inner join Users u on mr.user_id = u.user_id
    group by u.user_id, u.name
    order by c_rating desc, u.name
),
cte_highest_avg_february as
(
    select top 1 avg(cast(rating as decimal(9,2))) as avg_rating, m.title as title
    from MovieRating mr
    inner join Movies m on mr.movie_id = m.movie_id
    where month(mr.created_at) = 2 and year(mr.created_at) = 2020
    group by mr.movie_id, m.title
    order by avg_rating desc, m.title
)
select [name] as results
from cte_max_count_ratings
union all
select title
from cte_highest_avg_february