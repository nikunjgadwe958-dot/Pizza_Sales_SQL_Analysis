-- Analyze the cumulative revenue generated over time. 

select order_date, sum(revenue) over(order by order_date) as cum_revenue 
from (SELECT orders.order_date, sum(orders_details.quantity * pizzas.price) as Revenue
from orders_details JOIN pizzas
on orders_details.pizza_id = pizzas.pizza_id JOIN orders
 on orders.order_id = orders_details.order_id
 group by orders.order_date) as sales;