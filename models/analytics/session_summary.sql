with user_session_channel as (

    select *
    from {{ ref('user_session_channel') }}

),

session_timestamp as (

    select *
    from {{ ref('session_timestamp') }}

),

final as (

    select
        DATE || '_' || CITY as SESSIONID,
        DATE,
        TEMP_MAX,
        TEMP_MIN,
        PRECIPITATION,
        WEATHER_CODE,
        CITY
    from user_session_channel

)

select *
from final