SELECT * FROM my_project.pizza_sales;
select
 sum(total_price) as total_revenue 
from my_project.pizza_sales;
select
 sum(total_price) / count(distinct order_id) as average_order_value 
from my_project.pizza_sales;
select
 sum(quantity) as total_pizza_sold 
from my_project.pizza_sales;
select 
sum(quantity) /count(distinct order_id) as Avg_pizza_per_order 
from my_project.pizza_sales;
select dayofweek(order_date),count(distinct order_id) as total_orders
 from  my_project.pizza_sales
 group by dayofweek(order_date);
SELECT 
    DAYNAME(STR_TO_DATE(order_date, '%d-%m-%Y')) AS day_name,
    COUNT(DISTINCT order_id) AS total_orders 
FROM my_project.pizza_sales 
GROUP BY DAYNAME(STR_TO_DATE(order_date, '%d-%m-%Y'));
select
 monthname(str_to_date(order_date,'%d-%m-%y')) as month_name,
count(distinct order_id)as total_order 
from my_project.pizza_sales 
group by  monthname(str_to_date(order_date,'%d-%m-%y'));
SELECT 
pizza_category,
sum(total_price)*100/(select sum(total_price) 
from my_project.pizza_sales)as pct from my_project.pizza_sales
 group by pizza_category;
 select 
 pizza_name,sum(total_price) as total_revenue
 from my_project.pizza_sales
 group by pizza_name 
order by total_revenue desc limit 5 ;
select 
pizza_name,sum(total_price) as total_revenue 
from my_project.pizza_sales 
group by pizza_name 
order by total_revenue asc limit 5;
select
 pizza_name,count(distinct order_id) as total_numbers 
 from my_project.pizza_sales
 group by pizza_name order by 
total_numbers  limit 5;
SELECT pizza_category, 
SUM(quantity) as Total_Quantity_Sold
FROM pizza_sales
where month(order_date) = 2
Group by pizza_category
Order by Total_Quantity_Sold DESC




