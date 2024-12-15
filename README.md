# Sweet Treats Bakery SQL Project

## Project Overview
The **Sweet Treats Bakery SQL Project** demonstrates the use of SQL to analyze and manage a bakery's operations effectively. This project helps Sarah, the owner of Sweet Treats, gain actionable insights into her customers, products, and sales by answering various business-related questions. The database includes information about customers, products, orders, and sales.

---

## Objectives
The key goals of this project are to:

1. Design a relational database for the bakery.
2. Insert sample data for realistic simulations.
3. Write SQL queries to solve business problems.
4. Showcase SQL skills in data analysis and reporting.

---

## Database Schema
The project uses the following four tables:

1. **Customers**: Stores details about the bakery's customers.
   - `CustomerID`: Unique identifier for each customer.
   - `CustomerName`: Name of the customer.
   - `Email`: Contact email.
   - `Phone`: Phone number.
   - `JoinDate`: Date the customer joined.

2. **Orders**: Tracks customer orders.
   - `OrderID`: Unique identifier for each order.
   - `CustomerID`: Reference to the customer placing the order.
   - `OrderDate`: Date the order was placed.
   - `TotalAmount`: Total cost of the order.
     
---

## Questions Answered with SQL
This project addresses 20 key questions to provide insights into the bakery's operations:

1. Who placed orders, and what did they spend?
2. Who are her top 5 customers by total spending?
3. How many orders were placed on each date?
4. Which customers placed orders greater than $100?
5. List all orders placed by each customer.
6. What is the average spending per customer?
7. What are the total sales per day?
8. Which customers placed the highest number of orders?
9. List customers and the total number of orders they have placed.
10. What is the total amount spent on each order date?
11. Which customers spent more than $500 in total?
12. List all orders made within the last 30 days.
    
---

## Implementation Steps

### 1. **Database Creation**
- Create the database `SweetTreats`.
- Define the schema for `Customers`, `Products`, `Orders`, and `Sales`.

### 2. **Data Insertion**
- Populate the tables with realistic sample data for customers and orders.

### 3. **SQL Queries**
- Write and execute queries to answer the 20 business questions.
- Use SQL features like `JOIN`, `GROUP BY`, `HAVING`, `ORDER BY`, and aggregate functions (`SUM`, `COUNT`, `AVG`) to generate insights.

### 4. **Analysis and Reporting**
- Analyze the results of the queries to provide actionable insights for Sarah to improve her bakery operations.

---

## Key Highlights

### Business Insights Delivered
- **Customer Insights**: Identify loyal customers and their spending habits.
- **Sales Insights**: Analyze daily revenue trends.
- **Operational Insights**: Track order patterns.

### Technical Skills Demonstrated
- Relational database design and management.
- Writing advanced SQL queries.
- Data aggregation and filtering for analysis.
- Generating insights from raw data.

---

## Tools Used
- SQL Database Management System (MySQL)

---

## Conclusion
This project provides a comprehensive demonstration of SQL skills, including database creation, data manipulation, and query writing. By addressing Sarah's key business questions, the project showcases the power of SQL in driving data-driven decision-making for small businesses like Sweet Treats Bakery.

