with cte as (select row_number() over(order by [date], name) rn, count(*) over() cnt, [date], [name]
from [dbo].[Battles])
select a.[rn], a.[name],a.[date],  b.[rn], b.[name], b.[date]
from cte a left join cte b on a.[rn] = b.rn - ([b].cnt / 2 + b.cnt % 2)
where a.[rn] <= a.cnt / 2 + a.cnt % 2