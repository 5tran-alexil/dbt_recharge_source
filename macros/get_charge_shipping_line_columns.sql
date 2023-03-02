
{% macro get_charge_shipping_line_columns() %}

{% set columns = [
    {"name": "charge_id", "datatype": dbt.type_int()},
    {"name": "index", "datatype": dbt.type_int()},
    {"name": "price", "datatype": dbt.type_float()},
    {"name": "code", "datatype": dbt.type_string()},
    {"name": "title", "datatype": dbt.type_string()},
    {"name": "_fivetran_synced", "datatype": dbt.type_timestamp()},
] %}

{{ return(columns) }}

{% endmacro %}