-- Determine the top 3 most ordered pizza types based on revenue for each pizza category

select name, revenue from(select category, name, revenue, 
rank() over(partition by category order by revenue desc) as rn
 from (select pizza_types.name, sum(orders_details.Quantity * pizzas.price) as Revenue, pizza_types.category
from pizza_types JOIN pizzas
on pizza_types.pizza_type_id = pizzas.pizza_type_id
JOIN orders_details
ON pizzas.pizza_id = orders_details.pizza_id
group by pizza_types.name, pizza_types.category) as A) as B
where rn <= 3; 