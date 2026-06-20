DESCRIBE fact_sales;

-- 1. Explore all the object in the database
SELECT *
FROM information_schema.tables
WHERE table_schema = 'DataWarehouseAnalytics';

-- selected attribute like table_name,table_rows and create_time. 
SELECT
    table_name,
    table_rows,
    create_time
FROM information_schema.tables
WHERE table_schema = 'DataWarehouseAnalytics';

-- 2. Explore all the columns in the database

SELECT *
FROM information_schema.columns
WHERE table_name = 'dim_customers';
