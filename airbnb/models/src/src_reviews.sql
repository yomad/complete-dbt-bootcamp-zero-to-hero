with raw_reviews as (
    select
        LISTING_ID,
        "DATE" as review_date,
        REVIEWER_NAME,
        COMMENTS as review_text,
        SENTIMENT as review_sentiment,
    from {{ source('airbnb', 'reviews') }}
)
select
    *
from raw_reviews
