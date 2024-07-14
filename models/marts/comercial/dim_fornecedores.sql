with
    stg_fornecedores as (
        select *
        from {{ ref('stg_erp__fornecedores') }}
    )

select *
from stg_fornecedores