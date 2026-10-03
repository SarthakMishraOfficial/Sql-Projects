USE retail_sales;


-- Customers NULL Check
SELECT *
FROM Customers
WHERE customer_id IS NULL
   OR first_name IS NULL
   OR last_name IS NULL
   OR email IS NULL
   OR registration_date IS NULL;


-- Products NULL Check
SELECT *
FROM Products
WHERE product_id IS NULL
   OR product_name IS NULL
   OR category IS NULL
   OR price IS NULL
   OR stock_quantity IS NULL;


-- Orders NULL Check
SELECT *
FROM Orders
WHERE order_id IS NULL
   OR customer_id IS NULL
   OR order_date IS NULL;


-- Order Details NULL Check
SELECT *
FROM Order_Details
WHERE order_detail_id IS NULL
   OR order_id IS NULL
   OR product_id IS NULL
   OR quantity IS NULL
   OR unit_price IS NULL;


-- Product Invalid Values
SELECT *
FROM Products
WHERE price <= 0
   OR stock_quantity < 0;


-- Order Details Invalid Values
SELECT *
FROM Order_Details
WHERE quantity <= 0
   OR unit_price <= 0;