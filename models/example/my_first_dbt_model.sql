
/*
    Welcome to your first dbt model!
    Did you know that you can also configure models directly within SQL files?
    This will override configurations stated in dbt_project.yml

    Try changing "table" to "view" below
*/

{{
    config(
            materialized='incremental',
            incremental_strategy="insert_overwrite",
            partition_by={
                "field": "date",
                "data_type": "date",
                "granularity": "day"
            }
        )
}}

with source_data as (

    select current_date() as date
    union all
    select null as id

)

select *
from source_data

/*
    Uncomment the line below to remove records with null `id` values
*/

-- where id is not null
