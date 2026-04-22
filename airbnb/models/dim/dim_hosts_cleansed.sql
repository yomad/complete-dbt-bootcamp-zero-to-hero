{{
    config(
        materialized = 'view'
    )
}}

with src_hosts as (
    select
        *
    -- from AIRBNB.RAW.RAW_HOSTS
    from {{source('airbnb','hosts')}}
)
select
    ID host_id,
    NVL(NAME, 'Anonymous') as host_name,
    IS_SUPERHOST,
    CREATED_AT,
    UPDATED_AT
from src_hosts