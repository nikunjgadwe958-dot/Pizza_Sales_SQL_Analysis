🍕 Pizza Sales SQL Analysis

📌 Project Overview

This project analyzes a pizza sales database using SQL to uncover business insights such as sales performance, customer ordering patterns, product popularity, and revenue trends.

The analysis is performed on a relational database containing order, pizza, and category information.

---

🗄️ Database Schema

The database consists of four main tables:

- orders — order date and time
- orders_details — pizzas ordered per order
- pizzas — pizza size and price
- pizza_types — pizza name and category

---

📊 Analysis Performed

The SQL queries in this project answer key business questions across multiple areas:

🔹 Order & Revenue Analysis

- Total number of orders
- Total revenue generated
- Average pizzas ordered per day
- Cumulative revenue over time

🔹 Product Performance

- Highest priced pizza
- Most common pizza size
- Top 5 most ordered pizzas
- Top pizzas by revenue

🔹 Category Insights

- Quantity sold by category
- Category distribution
- Revenue percentage by category
- Top pizzas per category by revenue

🔹 Time-Based Patterns

- Orders distribution by hour

All SQL queries used for analysis are available in the SQL Queries folder.

---

📁 Project Structure

Pizza-Sales-SQL-Analysis
│
├── Data
│   ├── orders.csv
│   ├── orders_details.csv
│   ├── pizzas.csv
│   └── pizza_types.csv
│
├── SQL Queries
│   ├── 00_database_schema.sql
│   ├── 01_total_orders.sql
│   ├── ...
│
└── README.md

---

🛠️ Tools Used

- MySQL
- SQL (Joins, Aggregations, Window Functions)
- MySQL Workbench

---

📈 Key Insights

- Large pizzas are the most frequently ordered size
- Classic category contributes the highest sales volume
- Thai Chicken Pizza generates the highest revenue
- Peak ordering occurs around midday
- Revenue shows consistent growth over time

---

👤 Author

Nikunj Gadwe
Aspiring Data Analyst

---

⭐ If you found this project useful, consider giving it a star.
