# 1 Who placed orders and what did they spend?

SELECT 
    C.CustomerID, 
    C.CustomerName, 
    COALESCE(SUM(O.Amount), 0) AS TotalSpent
FROM 
    customers_200 C
LEFT JOIN 
    orders_200 O
ON 
    C.CustomerID = O.CustomerID
GROUP BY 
    C.CustomerID, C.CustomerName
ORDER BY 
    TotalSpent DESC;

# 2 Who are her top 5 customers by total spending?

SELECT 
    CustomerID, 
    CustomerName, 
    TotalSpent
FROM (
    SELECT 
        C.CustomerID, 
        C.CustomerName, 
        COALESCE(SUM(O.Amount), 0) AS TotalSpent
    FROM 
        customers_200 C
    LEFT JOIN 
        orders_200 O
    ON 
        C.CustomerID = O.CustomerID
    GROUP BY 
        C.CustomerID, C.CustomerName
    ORDER BY 
        TotalSpent DESC
) AS RankedCustomers
LIMIT 5;

# 3. How many orders were placed on each date?

SELECT 
    OrderDate, 
    COUNT(OrderID) AS TotalOrders
FROM 
    orders_200
GROUP BY 
    OrderDate
ORDER BY 
    OrderDate ASC;

# 4. Which customers placed orders greater than $100?

SELECT 
    C.CustomerID, 
    C.CustomerName, 
    O.OrderID, 
    O.OrderDate, 
    O.Amount
FROM 
    customers_200 C
JOIN 
    orders_200 O
ON 
    C.CustomerID = O.CustomerID
WHERE 
    O.Amount > 100
ORDER BY 
    O.Amount DESC;

# 5. List all orders placed by each customer

SELECT 
    C.CustomerID, 
    C.CustomerName, 
    O.OrderID, 
    O.OrderDate, 
    O.Amount
FROM 
    customers_200 C
JOIN 
    orders_200 O
ON 
    C.CustomerID = O.CustomerID
ORDER BY 
    C.CustomerID, O.OrderDate;
    
    
# 6. What is the average spending per customer?

SELECT 
    C.CustomerID, 
    C.CustomerName, 
    COALESCE(AVG(O.Amount), 0) AS AverageSpent
FROM 
    customers_200 C
LEFT JOIN 
    orders_200 O
ON 
    C.CustomerID = O.CustomerID
GROUP BY 
    C.CustomerID, C.CustomerName;

# 7. Total sales per day

SELECT 
    OrderDate, 
    SUM(Amount) AS TotalSales
FROM 
    orders_200
GROUP BY 
    OrderDate
ORDER BY 
    OrderDate;

# 8. Which customers placed the highest number of orders?

SELECT 
    C.CustomerID, 
    C.CustomerName, 
    COUNT(O.OrderID) AS OrderCount
FROM 
    customers_200 C
JOIN 
    orders_200 O
ON 
    C.CustomerID = O.CustomerID
GROUP BY 
    C.CustomerID, C.CustomerName
ORDER BY 
    OrderCount DESC
LIMIT 5;


# 9. List customers and the total number of orders they have placed?

SELECT 
    C.CustomerID, 
    C.CustomerName, 
    COUNT(O.OrderID) AS OrderCount
FROM 
    customers_200 C
LEFT JOIN 
    orders_200 O
ON 
    C.CustomerID = O.CustomerID
GROUP BY 
    C.CustomerID, C.CustomerName
ORDER BY 
    OrderCount DESC;

# 10. What is the total amount spent on each order date?

SELECT 
    OrderDate, 
    SUM(Amount) AS TotalSpent
FROM 
    orders_200
GROUP BY 
    OrderDate
ORDER BY 
    OrderDate;
    
# 11. Which customers spent more than $500 in total?

SELECT 
    C.CustomerID, 
    C.CustomerName, 
    SUM(O.Amount) AS TotalSpent
FROM 
    customers_200 C
JOIN 
    orders_200 O
ON 
    C.CustomerID = O.CustomerID
GROUP BY 
    C.CustomerID, C.CustomerName
HAVING 
    SUM(O.Amount) > 500
ORDER BY 
    TotalSpent DESC;


# 12. List all orders made within the last 30 days

SELECT 
    O.OrderID, 
    O.OrderDate, 
    O.Amount, 
    C.CustomerID, 
    C.CustomerName
FROM 
    orders_200 O
JOIN 
    customers_200 C
ON 
    O.CustomerID = C.CustomerID
WHERE 
    O.OrderDate >= CURDATE() - INTERVAL 30 DAY
ORDER BY 
    O.OrderDate DESC;







