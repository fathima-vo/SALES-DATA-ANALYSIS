Sales Data Analysis — SQL Project

📌 Overview
This project analyzes e-commerce sales data using SQL. It models customer orders and order details to uncover insights around revenue, profit, payment modes, product categories, and regional performance. It was built as a hands-on portfolio project to practice relational database querying and business-oriented SQL analysis.

 🎯 Objective
To write SQL queries that go beyond basic syntax practice, answering real business questions such as which states earn the most profit, which orders are the highest value, and which categories perform best.

🛠️ Tools & Technologies

| Category | Details |
|----------|---------|
| Database | MySQL |
| Tool | MySQL Workbench |
| Version Control | GitHub |
| Data | E-commerce sales dataset (orders and order details) |
 🗂️ Database Schema

**orders**

| Column | Description |
|--------|-------------|
| Order ID | Primary key |
| Order Date | Date the order was placed (converted from text to `DATE`) |
| CustomerName | Name of the customer |
| City | Customer's city |
| State | Customer's state |

**details**

| Column | Description |
|--------|-------------|
| Order ID | Foreign key → orders |
| Amount | Order amount |
| Profit | Profit earned on the order |
| Quantity | Number of items ordered |
| Category | Product category |
| PaymentMode | Mode of payment |

## 💻 SQL Concepts Applied
- ✅ Joins (INNER, LEFT, and UNION to simulate FULL OUTER JOIN)
- ✅ Aggregate functions (COUNT, SUM, AVG, MAX, MIN)
- ✅ GROUP BY
- ✅ Subqueries
- ✅ CTEs (Common Table Expressions)
- ✅ Window functions (RANK)
- ✅ CASE statements
- ✅ Stored procedures
- ✅ Date conversion with STR_TO_DATE
- ✅ Filtering, sorting & LIMIT

 🔍 Key Business Questions Explored
- Which customers are from a given city, and how many orders does each city have?
- What are the top 10 highest-amount orders?
- Which orders were paid by credit card?
- Which orders were placed in January 2018?
- What is the total amount of all orders?
- What is the total profit for each category?
- Which state has the highest total profit?
- Which are the top 3 highest-profit orders in each category?
- Which orders have an amount above the average order amount?
- What is the second-highest order amount?
- How much quantity has each customer purchased?
- Which orders count as "good profit" (above 500) vs "normal profit"?

📁 Repository Structure
```
├── sql_project.sql    -- Data preparation + all SQL queries
└── README.md          -- Project documentation
```

📈 Outcome
This project strengthened my ability to translate real-world business questions into structured SQL queries, and demonstrated core data analysis skills including joins, aggregation, subqueries, CTEs, and window functions on relational data.

🔗 Connect
Feel free to explore the queries, fork the repo, or reach out with feedback!

Part of my SQL & Data Analytics portfolio.
