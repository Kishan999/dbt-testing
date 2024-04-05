select * from 
AIRBNB.DEV.dim_listing
where minimum_nights < 1 
limit 10