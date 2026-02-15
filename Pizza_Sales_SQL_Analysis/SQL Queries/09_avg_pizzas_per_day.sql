-- Group the order by date and calculate the average number of pizzas ordered per day. 

 SELECT 
    ROUND(AVG(quantity), 0) AS average_pizza_ordered_per_day
FROM
    (SELECT 
        orders.order_date AS date,
            SUM(orders_details.Quantity) AS quantity
    FROM
        orders
    JOIN orders_details ON orders.order_id = orders_details.order_id
    GROUP BY date) AS order_quantity; 