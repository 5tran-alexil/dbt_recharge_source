
{% macro get_checkout_columns() %}

{% set columns = [
    {"name": "token", "datatype": dbt.type_string()},
    {"name": "charge_id", "datatype": dbt.type_int()},
    {"name": "billing_address_first_name", "datatype": dbt.type_string()},
    {"name": "billing_address_last_name", "datatype": dbt.type_string()},
    {"name": "billing_address_address_1", "datatype": dbt.type_string()},
    {"name": "billing_address_address_2", "datatype": dbt.type_string()},
    {"name": "billing_address_city", "datatype": dbt.type_string()},
    {"name": "billing_address_province", "datatype": dbt.type_string()},
    {"name": "billing_address_country", "datatype": dbt.type_string()},
    {"name": "billing_address_zip", "datatype": dbt.type_string()},
    {"name": "billing_address_company", "datatype": dbt.type_string()},
    {"name": "billing_address_phone", "datatype": dbt.type_string()},
    {"name": "shipping_address_first_name", "datatype": dbt.type_string()},
    {"name": "shipping_address_last_name", "datatype": dbt.type_string()},
    {"name": "shipping_address_address_1", "datatype": dbt.type_string()},
    {"name": "shipping_address_address_2", "datatype": dbt.type_string()},
    {"name": "shipping_address_city", "datatype": dbt.type_string()},
    {"name": "shipping_address_province", "datatype": dbt.type_string()},
    {"name": "shipping_address_country", "datatype": dbt.type_string()},
    {"name": "shipping_address_zip", "datatype": dbt.type_string()},
    {"name": "shipping_address_company", "datatype": dbt.type_string()},
    {"name": "shipping_address_phone", "datatype": dbt.type_string()},
    {"name": "buyer_accepts_marketing", "datatype": "boolean"},
    {"name": "completed_at", "datatype": dbt.type_timestamp()},
    {"name": "created_at", "datatype": dbt.type_timestamp()},
    {"name": "currency", "datatype": dbt.type_string()},
    {"name": "discount_code", "datatype": dbt.type_string()},
    {"name": "email", "datatype": dbt.type_string()},
    {"name": "external_checkout_id", "datatype": dbt.type_string()},
    {"name": "external_checkout_source", "datatype": dbt.type_string()},
    {"name": "applied_discount_amount", "datatype": dbt.type_string()},
    {"name": "applied_discount_applicable", "datatype": "boolean"},
    {"name": "applied_discount_non_applicable_reason", "datatype": dbt.type_string()},
    {"name": "applied_discount_value", "datatype": dbt.type_string()},
    {"name": "applied_discount_value_type", "datatype": dbt.type_string()},
    {"name": "shipping_address_validations_country_is_supported", "datatype": "boolean"},
    {"name": "shipping_address_validations_ups", "datatype": "boolean"},
    {"name": "shipping_rate_shipping_rate_checkout_subtotal_price", "datatype": dbt.type_string()},
    {"name": "shipping_rate_shipping_rate_checkout_total_price", "datatype": dbt.type_string()},
    {"name": "shipping_rate_shipping_rate_checkout_total_tax", "datatype": dbt.type_string()},
    {"name": "shipping_rate_code", "datatype": dbt.type_string()},
    {"name": "shipping_rate_delivery_range", "datatype": dbt.type_string()},
    {"name": "shipping_rate_description", "datatype": dbt.type_string()},
    {"name": "shipping_rate_handle", "datatype": dbt.type_string()},
    {"name": "shipping_rate_name", "datatype": dbt.type_string()},
    {"name": "shipping_rate_phone_required", "datatype": dbt.type_string()},
    {"name": "shipping_rate_price", "datatype": dbt.type_string()},
    {"name": "shipping_rate_title", "datatype": dbt.type_string()},
    {"name": "requires_shipping", "datatype": "boolean"},
    {"name": "subtotal_price", "datatype": dbt.type_string()},
    {"name": "taxes_included", "datatype": "boolean"},
    {"name": "total_price", "datatype": dbt.type_string()},
    {"name": "total_tax", "datatype": dbt.type_string()},
    {"name": "phone", "datatype": dbt.type_string()},
    {"name": "updated_at", "datatype": dbt.type_timestamp()},
    {"name": "note_attributes", "datatype": dbt.type_string()},
    {"name": "_fivetran_synced", "datatype": dbt.type_timestamp()}
] %}

{{ fivetran_utils.add_pass_through_columns(columns, var('recharge__checkout_passthrough_columns')) }}

{{ return(columns) }}

{% endmacro %}