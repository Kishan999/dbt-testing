select * from AIRBNB.DEV.fct_reviews fr
left join AIRBNB.DEV.dim_listing dl
on dl.listing_id = fr.listing_id
where fr.review_date < dl.created_at