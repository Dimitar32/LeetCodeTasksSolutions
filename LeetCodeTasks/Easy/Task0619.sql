select (
    select top 1 num
    from MyNumbers
    group by num
    having count(*) <= 1
    order by num desc
) num