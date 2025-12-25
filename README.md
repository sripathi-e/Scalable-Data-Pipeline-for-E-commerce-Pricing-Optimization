# 🛒 Data-Pipeline-for-E-commerce-Pricing-Optimization

![Python](https://img.shields.io/badge/Python-3.2+-blue.svg)
![Apache Spark](https://img.shields.io/badge/Apache%20Spark-3.x-orange)
![Hive](https://img.shields.io/badge/Apache%20Hive-yellow)
![Airflow](https://img.shields.io/badge/Apache%20Airflow-2.x-blue)

---

## 📘 Overview  
A **Scalable-Data-Pipeline-for-E-commerce-Pricing-Optimization** that collects e-commerce product and sales data, analyzes pricing trends, and recommends **optimal pricing strategies** using **Spark, Hive, and Airflow**.  
It automates data ingestion, transformation, analysis using open-source big data tools.

The goal is to analyze product pricing and sales data to recommend optimal pricing strategies that maximize revenue and identify key market trends.

---

## 🧩 Project Architecture  
ecommerce_pricing_pipeline/
│
├── data/
│   ├── products.csv
│   ├── sales.csv
│
├── pyspark
│
├── hive
│
├── airflow_dags
│
├── logs.


🧩 Key Idea

E-commerce companies handle massive, fast-changing datasets. Manually processing pricing and sales data from multiple sources is inefficient.
Hence, this project implements a real-time ETL (Extract, Transform, Load) pipeline that automates:

1. Data ingestion from raw CSV files.

2. Transformation and analysis using Spark to identify pricing patterns and sales trends.

3. Data storage and querying in Hive for reporting.

4. Automation and scheduling using Airflow to ensure daily data updates and monitoring.


🔁 Data Flow Summary

1. Extract:

    * Product and sales data (CSV format) are ingested from local storage into HDFS.
    * Example: products.csv contains product categories, prices, and discounts.
    * Example: sales.csv contains transactional sales data with dates and regions.

2. Transform (Spark):

    * Spark jobs perform cleaning, joining, and analysis.
    * Metrics like revenue, average discount, and sales per region are computed.
    * Spark optimizations (memory tuning, partitioning) are applied for performance.

3. Load (Hive):

    * Transformed data is stored in Hive tables, enabling easy querying.

4. Orchestrate (Airflow):

    * Airflow DAG automates the entire workflow:

Runs Spark job → Loads Hive → Logs execution → Sends success/failure alerts.
