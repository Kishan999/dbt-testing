-- back compat for old kwarg name
  
  begin;
    

        insert into AIRBNB.DEV.fct_reviews ("LISTING_ID", "REVIEW_DATE", "REVIEWER_NAME", "REVIEW_TEXT", "REVIEW_SENTIMENT", "REVIEW_ID")
        (
            select "LISTING_ID", "REVIEW_DATE", "REVIEWER_NAME", "REVIEW_TEXT", "REVIEW_SENTIMENT", "REVIEW_ID"
            from AIRBNB.DEV.fct_reviews__dbt_tmp
        );
    commit;