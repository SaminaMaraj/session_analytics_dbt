{% snapshot snapshot_session_summary %}

{{
    config(
      target_schema='snapshots',
      unique_key='SESSIONID',
      strategy='check',
      check_cols='all'
    )
}}

select *
from {{ ref('session_summary') }}

{% endsnapshot %}