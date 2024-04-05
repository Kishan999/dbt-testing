

with  __dbt__cte__src_reviews as (
WITH raw_reviews AS (
SELECT
*
FROM
AIRBNB.raw.raw_reviews
)
SELECT
listing_id,date AS review_date,
reviewer_name,
comments AS review_text,
sentiment AS review_sentiment
FROM
raw_reviews
), src_review as (

    select * from __dbt__cte__src_reviews
)

select * , md5(cast(coalesce(cast(listing_id as TEXT), '_dbt_utils_surrogate_key_null_') || '-' || coalesce(cast(review_date as TEXT), '_dbt_utils_surrogate_key_null_') || '-' || coalesce(cast(reviewer_name as TEXT), '_dbt_utils_surrogate_key_null_') || '-' || coalesce(cast(review_text as TEXT), '_dbt_utils_surrogate_key_null_') as TEXT)) as review_id

from src_review where review_text is not null

  and review_date >= (select max(review_date) from AIRBNB.DEV.fct_reviews)
