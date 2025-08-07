SELECT
  product_name,
  price,
  location,
  business_name,
  seller_type,
  captured_at::DATE AS ingestion_date
FROM {{ source('silver', 'tiles_silver_cleaned') }}
WHERE product_name IS NOT NULL;
 