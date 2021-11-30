{{ config(materialized='table') }}

with adgroupsperformance_stream as (
    select * from "{{var('schema')}}".stream_adgroupsperformance
),
ad_groups_performance as (
    select
        ad_group__id as ad_group_id
        , campaign__id as campagin_id
        , substring(ad_group__resource_name, 11,10 ) as customer_id
        , metrics__clicks as metrics_clicks
        , metrics__cost_micros as metrics_cost_micros
        , metrics__impressions as metrics_impressions
    from adgroupsperformance_stream
)
select * from ad_groups_performance