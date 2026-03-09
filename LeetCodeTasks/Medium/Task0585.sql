/* Write your T-SQL query statement below */
;with cte_not_in_lat_lon as(
    select pid, lat, lon, row_number() over(partition by lat, lon order by pid) rn
    from Insurance
)
,cte_tiv_2015 as(
    select pid, row_number() over(partition by tiv_2015 order by pid) rn_tiv_2015, tiv_2015
    from Insurance
)
select round(sum(i.tiv_2016), 2) as tiv_2016
from Insurance i
inner join cte_tiv_2015 c on i.tiv_2015 = c.tiv_2015 and c.rn_tiv_2015 = 2
left outer join cte_not_in_lat_lon l on i.lat = l.lat 
                                AND i.lon = l.lon 
                                AND l.rn = 2
where l.lat is null
