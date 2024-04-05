
    
    

select
    listing_id as unique_field,
    count(*) as n_records

from AIRBNB.DEV.dim_listing
where listing_id is not null
group by listing_id
having count(*) > 1

