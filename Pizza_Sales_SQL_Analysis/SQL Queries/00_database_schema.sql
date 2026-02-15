CREATE database pizza_sales;

use pizza_sales;
CREATE table orders(
order_id int PRIMARY KEY,
order_date date not null,
order_time time not null);

CREATE table orders_Details(
order_details_id int PRIMARY KEY,
order_id int NOT NULL,
pizza_id text not null,
Quantity int not null);