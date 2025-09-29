with 

source as (

    select * from {{ source('raw', 'sales') }}

),

renamed as (

    select date_date, COUNT(date_date) as pk

    from source
    group by date_date
    having pk>2
)

select * from renamed
