-- Calculate the percentage contribution of each pizza type to total revenue. 

select pizza_types.category as Category, sum(orders_details.Quantity * pizzas.price) / (SELECT 
    ROUND(SUM(orders_details.quantity * pizzas.price),
            2) AS Total_sales
FROM
    orders_details
        JOIN
    pizzas ON pizzas.pizza_id = orders_details.pizza_id) * 100 as revenue
from pizza_types JOIN pizzas
on pizza_types.pizza_type_id = pizzas.pizza_type_id
JOIN orders_details on
pizzas.pizza_id = orders_details.pizza_id
group by pizza_types.category
order by Revenue desc;