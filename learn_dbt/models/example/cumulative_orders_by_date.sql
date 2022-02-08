{{ config(materialized='view') }}

with daily as
(select o_orderdate, sum(o_totalprice) as daily_sales
from snowflake_sample_data.tpch_sf1.orders
group by o_orderdate)

select o_orderdate, daily_sales, sum(daily_sales) over (order by o_orderdate rows between unbounded preceding and current row) as accum_sales
from daily
order by o_orderdate
