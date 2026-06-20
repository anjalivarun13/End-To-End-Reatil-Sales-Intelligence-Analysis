/*
===============================================================================
Part-to-Whole Analysis
===============================================================================
Purpose:
    - To compare performance or metrics across dimensions or time periods.
    - To evaluate differences between categories.
    - Useful for A/B testing or regional comparisons.

===============================================================================
*/
-- 1. Which categories contribute the most to overall sales?

with category_Sales as(
	select p.category,SUM(f.sales_amount) as total_sales
	from fact_sales as f
	left join dim_products as p
	on f.product_key = p.product_key
	group by p.category
)
select category,
	total_sales,
    sum(total_sales) over() as overall_sales,
    concat(round((cast(total_sales as float) / sum(total_sales) over())*100 ,2), '%') as percentage_of_total
from category_Sales
order by total_sales desc;