USE retail_sales;


-- =========================================
-- BASIC FILTERING
-- =========================================

-- Electronics products
SELECT *
FROM Products
WHERE category = 'Electronics';


-- Products above ₹5,000
SELECT *
FROM Products
WHERE price > 5000;


-- Products between ₹2,000 and ₹10,000
SELECT *
FROM Products
WHERE price BETWEEN 2000 AND 10000;


-- Products in selected categories
SELECT *
FROM Products
WHERE category IN ('Electronics', 'Accessories');


-- Products containing "o"
SELECT *
FROM Products
WHERE product_name LIKE '%o%';


-- Unique categories
SELECT DISTINCT category
FROM Products;


-- =========================================
-- SORTING
-- =========================================

-- Most expensive products
SELECT *
FROM Products
ORDER BY price DESC;


-- 5 most expensive products
SELECT *
FROM Products
ORDER BY price DESC
LIMIT 5;


-- =========================================
-- AGGREGATE FUNCTIONS
-- =========================================

-- Total customers
SELECT COUNT(*) AS total_customers
FROM Customers;


-- Total products
SELECT COUNT(*) AS total_products
FROM Products;


-- Total orders
SELECT COUNT(*) AS total_orders
FROM Orders;


-- Total stock
SELECT SUM(stock_quantity) AS total_stock
FROM Products;


-- Average product price
SELECT AVG(price) AS average_product_price
FROM Products;


-- Cheapest product price
SELECT MIN(price) AS lowest_price
FROM Products;


-- Highest product price
SELECT MAX(price) AS highest_price
FROM Products;


-- =========================================
-- BUSINESS QUESTIONS
-- =========================================

-- Total products sold
SELECT SUM(quantity) AS total_products_sold
FROM Order_Details;


-- Total revenue
SELECT SUM(quantity * unit_price) AS total_revenue
FROM Order_Details;


-- Average selling price
SELECT AVG(unit_price) AS average_selling_price
FROM Order_Details;