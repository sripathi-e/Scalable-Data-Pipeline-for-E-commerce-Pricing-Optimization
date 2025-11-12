CREATE DATABASE IF NOT EXISTS ecommerce;

CREATE TABLE IF NOT EXISTS ecommerce.category_pricing_summary (
    category STRING,
    total_products INT,
    avg_effective_price DOUBLE,
    total_revenue DOUBLE,
    max_revenue DOUBLE,
    min_revenue DOUBLE
)
STORED AS PARQUET;

CREATE TABLE IF NOT EXISTS ecommerce.region_revenue_summary (
    region STRING,
    total_sales INT,
    total_revenue DOUBLE,
    avg_revenue_per_product DOUBLE
)
STORED AS PARQUET;
