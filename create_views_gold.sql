-- Calendar
CREATE VIEW gold.calendar AS
SELECT *
FROM OPENROWSET(
    BULK 'https://dataengineer01.blob.core.windows.net/cleaneddata-s/AdventureWorks_Calendar/*.parquet',
    FORMAT = 'PARQUET'
) AS query1;


-- Customers
CREATE VIEW gold.customers AS
SELECT *
FROM OPENROWSET(
    BULK 'https://dataengineer01.blob.core.windows.net/cleaneddata-s/AdventureWorks_Customers/*.parquet',
    FORMAT = 'PARQUET'
) AS query1;


-- Product Categories
CREATE VIEW gold.product_categories AS
SELECT *
FROM OPENROWSET(
    BULK 'https://dataengineer01.blob.core.windows.net/cleaneddata-s/AdventureWorks_Product_Categories/*.parquet',
    FORMAT = 'PARQUET'
) AS query1;


-- Product Subcategories
CREATE VIEW gold.product_subcategories AS
SELECT *
FROM OPENROWSET(
    BULK 'https://dataengineer01.blob.core.windows.net/cleaneddata-s/AdventureWorks_Product_Subcategories/*.parquet',
    FORMAT = 'PARQUET'
) AS query1;


-- Products
CREATE VIEW gold.products AS
SELECT *
FROM OPENROWSET(
    BULK 'https://dataengineer01.blob.core.windows.net/cleaneddata-s/AdventureWorks_Products/*.parquet',
    FORMAT = 'PARQUET'
) AS query1;


-- Returns
CREATE VIEW gold.returns AS
SELECT *
FROM OPENROWSET(
    BULK 'https://dataengineer01.blob.core.windows.net/cleaneddata-s/AdventureWorks_Returns/*.parquet',
    FORMAT = 'PARQUET'
) AS query1;


-- Sales 2015
CREATE VIEW gold.sales_2015 AS
SELECT *
FROM OPENROWSET(
    BULK 'https://dataengineer01.blob.core.windows.net/cleaneddata-s/AdventureWorks_Sales_2015/*.parquet',
    FORMAT = 'PARQUET'
) AS query1;


-- Sales 2016
CREATE VIEW gold.sales_2016 AS
SELECT *
FROM OPENROWSET(
    BULK 'https://dataengineer01.blob.core.windows.net/cleaneddata-s/AdventureWorks_Sales_2016/*.parquet',
    FORMAT = 'PARQUET'
) AS query1;


-- Sales 2017
CREATE VIEW gold.sales_2017 AS
SELECT *
FROM OPENROWSET(
    BULK 'https://dataengineer01.blob.core.windows.net/cleaneddata-s/AdventureWorks_Sales_2017/*.parquet',
    FORMAT = 'PARQUET'
) AS query1;


-- Territories
CREATE VIEW gold.territories AS
SELECT *
FROM OPENROWSET(
    BULK 'https://dataengineer01.blob.core.windows.net/cleaneddata-s/AdventureWorks_Territories/*.parquet',
    FORMAT = 'PARQUET'
) AS query1;