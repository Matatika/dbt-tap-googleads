{{ config(materialized='table') }}

with campaign_performance_by_location as (
    select * from {{ source('googleads_source', 'campaign_performance_by_location') }}
),
geo_target_constant as (
    select * from "{{var('schema')}}".geo_target_constant
),
final as (
    select
        campaign__name as campaign_name
        , substring(campaign__resource_name, 11,10 ) as customer_id
        , campaign_criterion__location__geo_target_constant as campaign_criterion_location_geo_target_constant
        , gtc.geo_target_constant__name as geo_target_constant_name
        , metrics__average_cpc as metrics_average_cpc
        , metrics__clicks as metrics_clicks
        , metrics__cost_micros as metrics_cost_micros
        , metrics__ctr as metrics_ctr
        , metrics__impressions as metrics_impressions
        , segments__date as segments_date
    from campaign_performance_by_location cpbl
    left join geo_target_constant gtc on gtc.geo_target_constant__resource_name = cpbl.campaign_criterion__location__geo_target_constant
)
select * from final