select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      select * from AIRBNB.DEV.fct_reviews fr
left join AIRBNB.DEV.dim_listing dl
on dl.listing_id = fr.listing_id
where fr.review_date < dl.created_at
      
    ) dbt_internal_test