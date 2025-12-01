-- This macro drops the stream tables from the GoogleAds data source.

-- We run this macro by invoking it through meltano: `meltano invoke dbt run-operation drop_google_ads_stream_tables`

-- Dropping these tables are an easy way to ensure that the 
{%- macro googleads_drop_google_ads_stream_tables() -%}
    {% set tables = ["accessible_customers",
                    "adgroups",
                    "ad_groups_performance",
                    "campaign",
                    "campaign_performance",
                    "campaign_performance_by_age_range_and_device",
                    "campaign_performance_by_gender_and_device",
                    "campaign_performance_by_location",
                    "customer_hierarchy",
                    "customers",
                    "geo_target_constant"] %}
    {% for t in tables %}
        {%- set drop_query -%}
            DROP TABLE IF EXISTS {{ target.schema }}.{{t}}
        {%- endset -%}
        {% do run_query(drop_query) %}
    {% endfor %}
{%- endmacro -%}