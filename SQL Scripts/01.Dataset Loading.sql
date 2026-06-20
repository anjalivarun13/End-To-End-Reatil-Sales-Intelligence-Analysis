/*
=============================================================
Create Database and Schemas
=============================================================
Script Purpose:
    This script creates a new database named 'DataWarehouseAnalytics' after checking if it already exists. 
    If the database exists, it is dropped and recreated. Additionally, this script creates a schema called gold

*/

DROP DATABASE IF EXISTS DataWarehouseAnalytics;

CREATE DATABASE DataWarehouseAnalytics;

USE DataWarehouseAnalytics;

-- Creating the dimension table

-- 1. Customer

CREATE TABLE dim_customers (
    customer_key INT,
    customer_id INT,
    customer_number VARCHAR(50),
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    country VARCHAR(50),
    marital_status VARCHAR(50),
    gender VARCHAR(50),
    birthdate DATE,
    create_date DATE
);

-- 2. Product

CREATE TABLE dim_products (
    product_key INT,
    product_id INT,
    product_number VARCHAR(50),
    product_name VARCHAR(100),
    category_id VARCHAR(50),
    category VARCHAR(50),
    subcategory VARCHAR(50),
    maintenance VARCHAR(50),
    cost INT,
    product_line VARCHAR(50),
    start_date DATE
);

-- creating the fact table 

CREATE TABLE fact_sales (
    order_number VARCHAR(50),
    product_key INT,
    customer_key INT,
    order_date DATE,
    shipping_date DATE,
    due_date DATE,
    sales_amount INT,
    quantity TINYINT,
    price INT
);

-- Enabling LOCAL INFILE in MySQL Server 
SHOW VARIABLES LIKE 'local_infile';

-- to "ON" write below command 
SET GLOBAL local_infile = 1;

SHOW VARIABLES LIKE 'local_infile';

-- SHOW VARIABLES LIKE 'secure_file_priv';

-- Import CSV files 
-- Two option 
	-- 1. Directly through the wizards 
    -- 2. Using the below script "Load Data Local Infile"

LOAD DATA LOCAL INFILE 'D:/InterSkill_solution_anjali/Mysql_Project/SQL Project/Dataset/dim_customers.csv'
INTO TABLE dim_customers
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;  

LOAD DATA LOCAL INFILE 'D:/InterSkill_solution_anjali/Mysql_Project/SQL Project/Dataset/dim_products.csv'
INTO TABLE dim_products
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;
 
LOAD DATA LOCAL INFILE 'D:/InterSkill_solution_anjali/Mysql_Project/SQL Project/Dataset/fact_sales.csv'
INTO TABLE fact_sales
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;


select count(*) from dim_customers;
select count(*) from dim_products;
select count(*) from fact_sales;

SELECT start_date
FROM dim_products
LIMIT 10;
