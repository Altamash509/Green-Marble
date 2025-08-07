 -- green_marble/gold/fct_tiles_products.sql

{{ config(materialized='view') }}

SELECT
  product_name,
  price,
  location,
  business_name,
  seller_type,
  ingestion_date,
  {{ dbt_utils.generate_surrogate_key(['product_name', 'business_name', 'price']) }} AS product_id,
  CURRENT_TIMESTAMP AS snapshot_ts
FROM {{ ref('dim_tiles') }}
WHERE price IS NOT NULL
