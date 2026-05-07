/* Write your T-SQL query statement below */
update s
set sex = (case when sex = 'f' then 'm' else 'f' end)
from Salary s
