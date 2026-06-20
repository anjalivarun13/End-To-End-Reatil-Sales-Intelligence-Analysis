/*
===============================================================================
Change Over Time Analysis
===============================================================================
Purpose:
    - To track trends, growth, and changes in key metrics over time.
    - For time-series analysis and identifying seasonality.
    - To measure growth or decline over specific periods.
===============================================================================
*/

-- 1. Analyse sales performance over the year

select YEAR(order_date) as order_year,
	sum(sales_amount) as total_sales,
    count(distinct customer_key) as total_customers,
	sum(quantity) as total_quantity
from fact_sales
group by YEAR(order_date)
order by YEAR(order_date);

-- 2. Analyze the sales performance over the month in the year of 2012 

select 
	MONTH(order_date) as order_month,
	sum(sales_amount) as total_sales,
    count(distinct customer_key) as total_customers,
	sum(quantity) as total_quantity
from fact_sales
where YEAR(order_date) = '2012'
group by YEAR(order_date),MONTH(order_date)
order by YEAR(order_date),MONTH(order_date);

-- 3. Date_format() to show year and month together instead of having separate column

select DATE_FORMAT(order_date, '%Y-%b') as order_date,
	sum(sales_amount) as total_sales,
    count(distinct customer_key) as total_customers,
	sum(quantity) as total_quantity
from fact_sales
group by DATE_FORMAT(order_date, '%Y-%b')
order by DATE_FORMAT(order_date, '%Y-%b');
