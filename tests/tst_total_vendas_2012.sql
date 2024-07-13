/*  Este teste garante que os valores de 2012 estejam alinhados com os valores auditados pela contabilidade
*/

{{
    config(
        severity = 'warn'
    )
}}

with
    vendas_em_2012 as (
        select
            sum(total_bruto) as total_bruto
        from {{ ref('fct_vendas') }}
        where data_do_pedido between '2012-01-01' and '2012-12-31'
    )
select total_bruto
from vendas_em_2012
where total_bruto not between 226298.45 and 226298.55 