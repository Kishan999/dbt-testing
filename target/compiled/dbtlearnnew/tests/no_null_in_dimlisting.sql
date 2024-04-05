
  select * from AIRBNB.DEV.dim_listing where 
  LISTING_ID is null or
  LISTING_NAME is null or
  ROOM_TYPE is null or
  MINIMUM_NIGHTS is null or
  HOST_ID is null or
  PRICE is null or
  CREATED_AT is null or
  UPDATED_AT is null or
  
  FALSE
