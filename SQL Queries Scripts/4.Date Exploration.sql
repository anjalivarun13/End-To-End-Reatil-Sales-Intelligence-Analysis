-- 1. Find the date of the first and last order date 

select min(order_date) as First_order_date,
	max(order_date) as Last_order_date
from fact_sales;

-- 2. How many years of sales are available

select min(order_date) as First_order_date,
	max(order_date) as Last_order_date,
    timestampdiff(year, min(order_date), max(order_date)) as order_range_years
from fact_sales;


-- in birthday column of customer table had some blank value and when it is imported in mysql it fills the blank value as '0000-00-00'
-- so i updated those value to null(no value provided by the customer)
-- so i am first updating it where i am first changing it's type from date to text so that i can easily update i.e. cast() was 
-- used because MySQL's NO_ZERO_DATE mode does not allow direct comparison with '0000-00-00' as a DATE value. 
 
UPDATE dim_customers
SET birthdate = NULL
WHERE CAST(birthdate AS CHAR(10)) = '0000-00-00';

-- 3. Find the youngest and the oldest customer

SELECT min(birthdate) as oldest_birthday,
	timestampdiff(year, min(birthdate), curdate()) as oldest_age,
	max(birthdate) as youngest_birthday,
    timestampdiff(year, max(birthdate), curdate()) as oldest_age
FROM dim_customers;

