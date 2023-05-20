
with base as (

    select *
    from {{ ref('stg_recharge__order_line_item_tmp') }}
),

fields as (

    select
        {{
            fivetran_utils.fill_staging_columns(
                source_columns = adapter.get_columns_in_relation(ref('stg_recharge__order_line_item_tmp')),
                staging_columns = get_order_line_item_columns()
            )
        }}
    from base
),

final as (

    select
        order_id,
        index,
        external_product_id_ecommerce,
        title as order_line_item_title,
        variant_title as product_variant_title,
        sku,
        quantity,
        grams,
        price,
        purchase_item_id,
        purchase_item_type

        {{ fivetran_utils.fill_pass_through_columns('recharge__order_line_passthrough_columns') }}
    from fields
)

select *
from final