select query_name, round(sum(cast(rating as decimal(9,2))/position)/count(*), 2) quality, 
round((cast(sum(case when rating < 3 then 1 else 0 end) as decimal(9, 2)) / count(*) * 100), 2) poor_query_percentage
from Queries
group by query_name