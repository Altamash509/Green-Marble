SELECT
  COUNT(*) AS total_products,
  COUNT(DISTINCT business_name) AS unique_businesses,
  MAX(ingestion_date) AS latest_data_ingested_on
FROM {{ ref('dim_tiles') }}
