with
    stg_transportadoras as (
        select *
        from {{ ref('stg_erp__transportadoras') }}
    )

select *
from stg_transportadoras