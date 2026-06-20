/*
===============================================================================
Data Segmentation Analysis
===============================================================================
Purpose:
    - To group data into meaningful categories for targeted insights.
    - For customer segmentation, product categorization, or regional analysis.
*/

-- 1.Segment products into cost ranges and count how many products fall into each segment
	-- step 1.Segment products into cost range
	-- step 2.count how many products fall into each segment

with product_segment as(
select product_key,
	product_name,
	cost,
    case 
		when cost < 100 then 'Below 100'
        when cost between 100 and 500 then '100-500'
        when cost between 500 and 1000 then '500-1000'
        else 'Above 1000'
	end cost_range
from dim_products
) 
select cost_range,
	count(product_key) as total_product
from product_segment
group by cost_range
order by total_product desc;

/*2. Group customers into three segments based on their spending behavior:
	- VIP: Customers with at least 12 months of history and spending more than €5,000.
	- Regular: Customers with at least 12 months of history but spending €5,000 or less.
	- New: Customers with a lifespan less than 12 months.
And find the total number of customers by each group
*/

with customer_spending as(
	select c.customer_key, 
		sum(f.sales_amount) as total_spending,
		min(order_date) as first_order,
		max(order_date) as last_order,
		timestampdiff(month,min(order_date),max(order_date)) as lifespan
	from fact_sales as f
	left join dim_customers as c
	on f.customer_key = c.customer_key
	group by c.customer_key
)
select customer_segment,
	count(customer_key) as total_customer
from(
	select customer_key,
		total_spending,
		lifespan,
		case 
			when lifespan > 12 and total_spending > 5000 then 'VIP'
			when lifespan > 12 and total_spending <= 5000 then 'Regular'
			else 'New'
		end customer_segment
	from customer_spending
) as customer_segment_table
group by customer_segment
order by total_customer desc;