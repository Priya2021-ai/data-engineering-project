# Azure End-to-End Data Engineering Project

## Overview

This project demonstrates a complete data engineering pipeline using Azure services. Data is ingested using Azure Data Factory, transformed using PySpark in Azure Databricks, stored in Azure Data Lake Storage (ADLS Gen2), loaded into Azure Synapse Analytics and visualized using Power BI.The goal is to ingest raw data, transform it across multiple layers and generate meaningful business insights.

## Architecture

ADF → ADLS (Bronze) → Databricks (Silver) → ADLS → Synapse (Gold) → Power BI

## Data Pipeline Flow

### 1. Data Ingestion (ADF)

* Data is ingested from source systems
* Pipelines are built using Azure Data Factory
* Data is stored in ADLS Gen2 (Bronze Layer)

### 2. Data Transformation (Databricks - Silver Layer)

* Used PySpark for data transformation
* Extracted Month and Year from Date column
* Created fullName column using Prefix, FirstName, LastName
* Cleaned Product data using split functions
* Converted string data into proper date format
* Stored transformed data in ADLS Gen2 (Parquet format)

### 3. Data Warehousing (Synapse - Gold Layer)

* Loaded transformed data into Azure Synapse Analytics
* Created external tables and views in Gold layer using SQL for reporting and analytics

### 4. Data Visualization (Power BI)

* Connected Power BI with Synapse
* Built dashboards for business insights
* Visualized customer, product, and sales data
* Identified Top 5 Products using Top N filter
* Used Sum of OrderQuantity for aggregation
* Designed Pie Chart for product distribution
* Applied filters for better data readability

## Technologies Used

* Azure Data Factory (ADF)
* Azure Databricks (PySpark)
* Azure Data Lake Storage Gen2 (ADLS)
* Azure Synapse Analytics
* Power BI
* GitHub

## Storage Path

abfss://silver@dataengineer01.dfs.core.windows.net/

## Key Learnings

* Built end-to-end data pipeline
* Worked with real-world data transformations
* Implemented Bronze-Silver-Gold architecture
* Integrated multiple Azure services
* Handled data cleaning and transformation using PySpark

## Future Enhancements

* Add incremental data loading
* Implement data quality checks
* Optimize performance using partitioning
* Enhance dashboards with advanced analytics
