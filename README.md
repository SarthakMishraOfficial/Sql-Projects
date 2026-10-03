# 🛒 Retail Sales SQL Project

## 📌 Project Overview

This project is a **beginner-level SQL retail sales database** built to practice SQL fundamentals and apply them to a real-world business scenario.

The database stores information about **customers, products, orders, and order details**. SQL queries are used to create and manage the database, validate data, filter and sort records, and answer basic business questions.

This project is part of my learning journey toward **Data Analytics and Business Analytics**.

---

## 🎯 Project Objectives

* Build a relational retail sales database from scratch
* Understand database and table structure
* Practice Primary Keys and Foreign Keys
* Insert and validate structured data
* Filter and sort business data using SQL
* Use aggregate functions for basic analysis
* Calculate basic sales and revenue metrics
* Answer practical retail business questions
* Build a SQL project for a professional GitHub portfolio

---

## 🗄️ Database Structure

The database contains **4 related tables**:

### 👤 Customers

Stores customer information.

| Column              | Description                |
| ------------------- | -------------------------- |
| `customer_id`       | Unique customer ID         |
| `first_name`        | Customer first name        |
| `last_name`         | Customer last name         |
| `email`             | Customer email             |
| `registration_date` | Customer registration date |

### 📦 Products

Stores product and inventory information.

| Column           | Description         |
| ---------------- | ------------------- |
| `product_id`     | Unique product ID   |
| `product_name`   | Name of the product |
| `category`       | Product category    |
| `price`          | Product price       |
| `stock_quantity` | Available stock     |

### 🧾 Orders

Stores customer order information.

| Column        | Description                   |
| ------------- | ----------------------------- |
| `order_id`    | Unique order ID               |
| `customer_id` | Customer who placed the order |
| `order_date`  | Date of the order             |

### 🛍️ Order_Details

Stores the products included in each order.

| Column            | Description            |
| ----------------- | ---------------------- |
| `order_detail_id` | Unique order-detail ID |
| `order_id`        | Related order          |
| `product_id`      | Related product        |
| `quantity`        | Quantity purchased     |
| `unit_price`      | Price per unit         |

---

## 🔗 Database Relationships

```text
Customers
    │
    │ 1 : Many
    ▼
Orders
    │
    │ 1 : Many
    ▼
Order_Details
    ▲
    │ Many : 1
    │
Products
```

### Relationships

* One customer can place multiple orders.
* One order can contain multiple order details.
* One product can appear in multiple order details.
* Foreign Keys maintain relationships between the tables.

---

## 📊 Dataset

| Table             | Records |
| ----------------- | ------: |
| Customers         |      10 |
| Products          |      15 |
| Orders            |      20 |
| Order_Details     |      39 |
| **Total Records** |  **84** |

---

## 🛠️ SQL Concepts Used

### Database & Table Management

* `CREATE DATABASE`
* `CREATE TABLE`
* `USE`
* Primary Keys
* Foreign Keys
* Data Types

### Data Insertion

* `INSERT INTO`
* Multiple-row insertion

### Data Validation

* `NULL` checks
* Invalid price checks
* Invalid stock checks
* Invalid quantity checks
* Basic data consistency checks

### Filtering

* `WHERE`
* `AND`
* `OR`
* `IN`
* `BETWEEN`
* `LIKE`
* `DISTINCT`

### Sorting

* `ORDER BY`
* `ASC`
* `DESC`
* `LIMIT`

### Aggregate Functions

* `COUNT()`
* `SUM()`
* `AVG()`
* `MIN()`
* `MAX()`

### Basic Calculations

Revenue was calculated using:

```sql
quantity * unit_price
```

This avoids storing redundant calculated revenue values in the database.

---

## 💼 Business Questions

The project answers basic retail business questions such as:

1. How many customers are registered?
2. How many products are available?
3. How many orders have been placed?
4. What is the total quantity of products sold?
5. What is the total revenue?
6. What is the average product price?
7. What is the cheapest product?
8. What is the most expensive product?
9. Which products have low stock?
10. Which products are above a specified price?

---

## 📁 Project Structure

```text
retail-sales-sql-project/
│
├── README.md
│
├── sql/
│   ├── 01_database_schema.sql
│   ├── 02_data_insertion.sql
│   ├── 03_data_validation.sql
│   └── 04_basic_analysis.sql
│
└── screenshots/
    ├── database_structure.png
    ├── data_preview.png
    └── analysis_results.png
```

---

## 📸 Project Screenshots

### Database Structure

![Database Structure](screenshots/database_structure.png)

### Data Preview

![Data Preview](screenshots/data_preview.png)

### SQL Analysis Results

![Analysis Results](screenshots/analysis_results.png)

---

## 🔍 Data Validation

Before analysis, the database was checked for common data-quality issues, including:

* Missing values
* Invalid product prices
* Invalid stock quantities
* Invalid order quantities
* Invalid unit prices
* Basic relational data consistency

---

## 🧠 Key Learning Outcomes

Through this project, I learned how to:

* Design a basic relational database
* Create tables with appropriate data types
* Define Primary Keys and Foreign Keys
* Insert structured business data
* Validate data using SQL
* Filter and sort datasets
* Use aggregate functions
* Calculate basic business metrics
* Convert a business scenario into a structured SQL database
* Organize a SQL project for a GitHub portfolio

---

## 🚀 Future Improvements

As I progress to intermediate SQL, I plan to extend this project with:

* `GROUP BY`
* `HAVING`
* Advanced `JOIN` analysis
* Subqueries
* CTEs
* Window Functions
* Customer-level sales analysis
* Category-level revenue analysis
* Monthly sales analysis
* Customer segmentation
* Advanced business insights

These features are **planned future improvements** and are not part of the current version of the project.

---

## 🎓 Project Level

**Level:** Beginner SQL Project

**Focus:** SQL Fundamentals + Basic Business Analysis

**Database:** Retail Sales

**Purpose:** Learning + Portfolio Development

---

## 👨‍💻 About This Project

This project represents one of my first practical SQL projects while building my skills in **Data Analytics and Business Analytics**.

I am continuing to develop my SQL, Python, Excel, and analytics skills through practical projects and progressively more advanced business problems.

---

⭐ **If you found this project useful, feel free to explore the SQL files and analysis.**
