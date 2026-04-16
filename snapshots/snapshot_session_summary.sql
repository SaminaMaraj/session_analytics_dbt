{% snapshot snapshot_session_summary %}

{{
    config(
      target_schema='snapshots',
      unique_key='sessionId',
      strategy='check',
      check_cols='all'
    )
}}

select *
from {{ ref('session_summary') }}

{% endsnapshot %}