with raw_reviews as (
    select
        LISTING_ID,
        "DATE" as review_date,
        REVIEWER_NAME,
        COMMENTS as review_text,
        SENTIMENT as review_sentiment,
    from AIRBNB.RAW.RAW_REVIEWS
)
select
    *
from raw_reviews