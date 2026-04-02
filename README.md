# Azure Data Engineering Project

## Overview
This project focuses on building a dynamic data ingestion pipeline using Azure Data Factory. The goal was to understand how data can be ingested, processed, and stored in a scalable way, along with implementing version control using GitHub.

## Architecture
Source (Git/Blob Storage) → Azure Data Factory → ADLS Gen2 (Raw Layer)

## Tools & Technologies
- Azure Data Factory (ADF)
- Azure Data Lake Storage Gen2 (ADLS)
- GitHub (Version Control)
- JSON-based pipeline configuration

## Pipeline Flow
- A Lookup activity is used to fetch metadata dynamically (for example, list of files).
- Based on the Lookup output, a ForEach activity iterates over each item.
- Inside the loop, data is processed and moved to the Raw layer in ADLS.

## Key Concepts Implemented
- Dynamic pipeline design using Lookup and ForEach
- Parameterization and use of expressions
- Activity dependency management using `dependsOn`
- Metadata-driven processing approach
- Git integration in ADF for version control

## Version Control
- ADF is integrated with GitHub for tracking changes
- main branch is used for development
- adf_publish branch is used for publishing ARM templates
- Each change is committed and can be tracked in Git history

## Project Structure
- adf/pipeline → Contains pipeline JSON files
- adf/dataset → Dataset definitions
- adf/linkedService → Source and sink connections
- adf/factory → Factory-level configuration

## Key Learnings
- Understanding how ADF pipelines are internally represented in JSON
- Building reusable and scalable pipelines
- Managing changes using Git integration
- Working with dynamic and parameterized workflows

## Conclusion
This project helped me understand how real-world data pipelines are designed in Azure Data Factory and how version control plays an important role in managing data engineering workflows.

## Future Enhancements
- Data transformation using Azure Databricks
- Data warehousing using Azure Synapse Analytics
- Visualization using Power BI

