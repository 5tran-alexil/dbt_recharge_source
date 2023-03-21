
with base as (

    select *
    from {{ ref('stg_recharge__charge_discount_code_tmp') }}
),

fields as (

    select
        {{
            fivetran_utils.fill_staging_columns(
                source_columns = adapter.get_columns_in_relation(ref('stg_recharge__charge_discount_code_tmp')),
                staging_columns = get_charge_discount_code_columns()
            )
        }}
    from base
),

final as (

    select
        charge_id,
        index,
        discount_id,
        amount
    from fields
)

select *
from final