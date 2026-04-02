/* Write your T-SQL query statement below */
;with cte as
(
    select
            case when income < 20000
                then 1
            else 0
            end as Low,
            case when income > 50000
                then 1
            else 0
            end as High,
            case when income <= 50000 and income >= 20000
                then 1
            else 0
            end as Average
    from Accounts
)
select 'Low Salary' as category, sum(Low) as accounts_count
from cte
union
select 'Average Salary' as category, sum(Average) as accounts_count
from cte
union
select 'High Salary' as category, sum(High) as accounts_count
from cte