with src_host as (

    select * from {{ref("scr_hosts")}}
)
select 
host_id,
nvl(host_name , 'Anonymous') as host_name,
is_superhost,
created_at,
updated_at
from src_host