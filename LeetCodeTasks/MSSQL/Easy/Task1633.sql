/* Write your T-SQL query statement below */
declare @count_user int = (select count(*) from users)

select r.contest_id, round(cast(count(u.user_id) as decimal(9,2))/@count_user*100, 2) as [percentage] 
from Users u
inner join Register r on u.user_id = r.user_id
group by r.contest_id
order by [percentage] desc, contest_id