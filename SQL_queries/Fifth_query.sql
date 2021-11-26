with distinct_dates as (select 
                            distinct date
                        from income_o ) ,
     intervals as ( select 
                        date dt1,
                        lead(date) over(order by date) as dt2 
                    from distinct_dates ) 
select 
    coalesce(sum(out),0),
    dt1,
    dt2 
from intervals 
left join Outcome_o 
  on Outcome_o.date > dt1 and Outcome_o.date <= dt2 
where dt2 is not null 
group by dt1, dt2;