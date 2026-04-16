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
        usc.sessionId,
        usc.userId,
        usc.channel,
        st.ts
    from user_session_channel usc
    left join session_timestamp st
        on usc.sessionId = st.sessionId

)

select *
from final