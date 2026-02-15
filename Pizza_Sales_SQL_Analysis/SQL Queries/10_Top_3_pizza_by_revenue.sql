-- Determine the top 3 most ordered pizza types based on revenue.

select pizza_types.name as Name, sum(orders_details.Quantity * pizzas.price) as Revenue
from pizza_types JOIN pizzas
on pizza_types.pizza_type_id = pizzas.pizza_type_id
JOIN orders_details on
pizzas.pizza_id = orders_details.pizza_id
group by pizza_types.name 
order by revenue desc limit 3;


