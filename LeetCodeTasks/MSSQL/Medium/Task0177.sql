CREATE FUNCTION getNthHighestSalary(@N INT) RETURNS INT AS
BEGIN
    RETURN (
        select distinct salary as SecondHighestSalary
        from (select 1 as dummy) d
        left outer join 
                        (
                           select salary, dense_rank() over(order by salary desc) rn
                            from Employee 
                        ) c on c.rn = @N

    );
END