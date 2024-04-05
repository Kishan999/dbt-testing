select * from {{ ref('fct_reviews') }} fr
left join {{ ref('dim_listing') }} dl
on dl.listing_id = fr.listing_id
where fr.review_date < dl.created_at