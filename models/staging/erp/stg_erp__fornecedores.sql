with
    rennamed as (
        select
            cast(ID as int) as pk_fornecedor
            , cast(COMPANYNAME as varchar) as nm_fornecedor
            , cast(CITY as varchar) as cidade_fornecedor
            , cast(COUNTRY as varchar) as pais_fornecedor
        from {{ source('erp', 'supplier') }}
    )

select *
from rennamed