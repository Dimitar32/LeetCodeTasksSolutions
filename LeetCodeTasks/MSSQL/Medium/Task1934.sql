/* Write your T-SQL query statement below */

select 
        s.user_id, 
        cast(cast(
            sum(
                case 
                    when c.action = 'confirmed'
                    then 1
                    else 0
                end
        ) as decimal(9,2)) / count(*) as decimal(9,2)) as confirmation_rate 

from Signups s
left outer join Confirmations c on s.user_id = c.user_id
group by s.user_id