<a href="https://github.com/Matatika/dbt-tap-googleads/blob/master/LICENSE"><img alt="GitHub license" src="https://img.shields.io/github/license/Matatika/dbt-tap-googleads"></a> 
![dbt logo and version](https://img.shields.io/static/v1?logo=dbt&label=dbt-version&message=[%3E=1.0.0;%3C2.0.0]&color=orange)


# dbt-tap-googleads
This dbt package contains models for Matatika's [tap-googleads](https://github.com/Matatika/tap-googleads).

The main focus of the package is to transform and clean up the Google Ads campagins and ad groups data into usable analytics models.

This package along with the [Analyze Bundle](https://github.com/Matatika/analyze-googleads) are designed intended to work together to provide instant insights on the [Matatika Platform](https://www.matatika.com).

| **model**              | **description** |
| ---------------------- | ------------------------------------------------------------- |
| [campaign_performance](models/base/campaign_performance.sql) | Overall performance of campaigns |
| [ad_groups_performance](models/base/ad_groups_performance.sql) | Overall performance of ad groups |
| [campaign_performance_by_age_range_and_device](models/base/campaign_performance_by_age_range_and_device) | Daily breakdown of campagin performance, by age range and device. |
| [campaign_performance_by_gender_and_device](models/base/campaign_performance_by_gender_and_device) | Daily breakdown of campagin performance, by gender and device. |
| [campaign_performance_by_location](models/base/campaign_performance_by_location) | Daily breakdown of campagin performance, by location. |


## Installation Instructions
Check [dbt Hub](https://hub.getdbt.com/) for the latest installation instructions, or [read the dbt docs](https://docs.getdbt.com/docs/package-management) for more information on installing packages.

Include in your `packages.yml`
```yaml
packages:
  - package: Matatika/dbt-tap-googleads
    version: [">=0.1.0", "<1.0.0"]
```
or
```yaml
packages:
  - git: https://github.com/Matatika/dbt-tap-googleads.git
```

### One time setup (after creating a python virtual environment)

    ```
    pip install dbt
    dbt deps
    ```

### development

    ```
    dbt test
    ```

## Database Support
This package has been tested on Postgres and Snowflake.

## Cloud hosting and SaaS
Deploy on the Matatika Platform within minutes. [www.matatika.com](https://www.matatika.com)

## Contributions

Additional contributions to this package are very welcome! Please create issues
or open PRs against `master`. Check out 
[this post](https://discourse.getdbt.com/t/contributing-to-a-dbt-package/657) 
on the best workflow for contributing to a package.

## Resources:
- Have questions, feedback, or need help? Please email us at support@matatika.com
- Find all of Matatika's pre-built dbt packages in our [dbt hub](https://hub.getdbt.com/Matatika/)
- Learn how to orchestrate [dbt transformations with Matatika](https://www.matatika.com/docs/getting-started/)
- Learn more about Matatika [in our docs](https://www.matatika.com/docs/introduction)
- Learn more about dbt [in the dbt docs](https://docs.getdbt.com/docs/introduction)

---

Copyright &copy; 2021 Matatika
