SELECT
  PRODUCT_NAME AS product_name,
  PRICE AS price,
  SELLER_LOCATION AS location,
  BRAND AS business_name,
  'Online' AS seller_type,
  SCRAPED_AT::DATE AS ingestion_date
FROM {{ source('silver', 'tiles_silver_cleaned') }}
WHERE PRODUCT_NAME IS NOT NULL
