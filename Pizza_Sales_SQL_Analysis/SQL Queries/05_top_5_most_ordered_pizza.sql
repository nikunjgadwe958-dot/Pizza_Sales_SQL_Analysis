-- List the top 5 most ordered pizza along with their quantity

select pizza_types.name, 
SUM(orders_details.Quantity) as quantity
from pizza_types JOIN pizzas
on pizza_types.pizza_type_id = pizzas.pizza_type_id
join orders_details
on orders_details.pizza_id = pizzas.pizza_id
group by pizza_types.name
order by quantity DESC LIMIT 5; 