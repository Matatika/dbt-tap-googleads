{{ config(materialized='table') }}

with campaign_performance as (
    select * from {{ source('googleads_source', 'campaign_performance') }}
),
final as (
    select
        campaign__name as campaign_name
        , substring(campaign__resource_name, 11,10 ) as customer_id
        , campaign__status as campaign_status
        , metrics__average_cpc as metrics_average_cpc
        , metrics__clicks as metrics_clicks
        , metrics__cost_micros as metrics_cost_micros
        , metrics__ctr as metrics_ctr
        , metrics__impressions as metrics_impressions
        , segments__date as segments_date
        , segments__device as segments_device
    from campaign_performance
)
select * from final