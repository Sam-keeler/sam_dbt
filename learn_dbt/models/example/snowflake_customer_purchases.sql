{{ config(materialized='table') }}

SELECT c.c_custkey,
       c.c_name,
       c.c_nationkey as nation,
       sum(o.o_totalprice) as total_order_price
FROM snowflake_sample_data.tpch_sf1.customer c
LEFT JOIN snowflake_sample_data.tpch_sf1.orders o
ON c.c_custkey = o.o_custkey
GROUP BY c.c_custkey,
       c.c_name,
       c.c_nationkey
