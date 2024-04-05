
  
    

        create or replace transient table AIRBNB.DEV.dim_hosts
         as
        (with  __dbt__cte__scr_hosts as (
WITH raw_hosts AS (
        SELECT
            *
        FROM
          AIRBNB.raw.raw_hosts
)
SELECT
id AS host_id,
NAME AS host_name,
is_superhost,
created_at,
updated_at
FROM
raw_hosts
), src_host as (

    select * from __dbt__cte__scr_hosts
)
select 
host_id,
nvl(host_name , 'Anonymous') as host_name,
is_superhost,
created_at,
updated_at
from src_host
        );
      
  