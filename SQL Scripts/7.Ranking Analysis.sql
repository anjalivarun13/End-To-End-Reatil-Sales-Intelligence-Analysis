-- 1. which 5 product generates the highest revenue

select p.product_name, sum(f.sales_amount) as revenue
from fact_sales as f
left join dim_products as p
on f.product_key = p.product_key
group by p.product_name
order by revenue desc
limit 5;

-- using window function and subquery:
select *
from(
select p.product_name, 
	sum(f.sales_amount) as revenue,
    row_number() over(order by sum(f.sales_amount) desc) as rank_products
from fact_sales as f
left join dim_products as p
on f.product_key = p.product_key
group by p.product_name
) as product_table
where rank_products <=5;

-- 2. What are the 5 worst-performing products in th terms of sales. 

select p.product_name, sum(f.sales_amount) as revenue
from fact_sales as f
left join dim_products as p
on f.product_key = p.product_key
group by p.product_name
order by revenue asc
limit 5;

-- 3. Find the Top-10 customers who have generated the highest revenue 

select c.customer_key, c.first_name, c.last_name,
	sum(f.sales_amount) as revenue
from fact_sales as f
left join dim_customers as c
on f.customer_key = c.customer_key
group by c.customer_key, c.first_name, c.last_name
order by revenue desc
limit 10;

-- 4 .Find the 3 customers witht fewest orders placed

select c.customer_key, c.first_name, c.last_name,
	count( distinct f.order_number) as total_orders
from fact_sales as f
left join dim_customers as c
on f.customer_key = c.customer_key
group by c.customer_key, c.first_name, c.last_name
order by total_orders asc
limit 3;

