{{ config(materialized='table') }}

with ad_groups_performance as (
    select * from {{ source('googleads_source', 'ad_groups_performance') }}
),
final as (
    select
        ad_group__id as ad_group_id
        , campaign__id as campaign_id
        , substring(ad_group__resource_name, 11,10 ) as customer_id
        , metrics__clicks as metrics_clicks
        , metrics__cost_micros as metrics_cost_micros
        , metrics__impressions as metrics_impressions
    from ad_groups_performance
)
select * from final