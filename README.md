
# E-Commerce Order & Revenue Analysis using SQL

## 📌 Project Overview
This project performs an end-to-end SQL analysis on a large e-commerce dataset (100,000+ orders) to evaluate order delivery performance, revenue generation, payment behavior, and customer geography. The goal is to help business stakeholders understand operational efficiency and key revenue drivers.

---

## 🧩 Business Problem
E-commerce businesses need visibility into:
- Why some orders fail to get delivered
- How much revenue is generated from successful deliveries
- Which products, payment methods, and regions drive business value

This project answers these questions using structured SQL analysis.

---

## 🎯 Business Questions Answered
- How many orders are delivered vs non-delivered?
- What are the most common reasons for order failure?
- How much revenue is generated from delivered orders?
- Which product categories generate the highest revenue?
- What payment methods do customers prefer?
- Which customer states place the most delivered orders?

---

## 🗂 Dataset
**Brazilian E-Commerce Public Dataset (Olist)**  
- 100,000+ e-commerce orders  
- Multiple relational tables  

### Tables Used
- `olist_orders_dataset`
- `olist_order_items_dataset`
- `olist_products_dataset`
- `olist_order_payments_dataset`
- `olist_customers_dataset`

---

## 🛠 Tools & Skills Used
- SQL (MySQL)
- Joins (INNER, LEFT)
- Aggregations (COUNT, SUM)
- Filtering & Grouping
- Business analysis & interpretation

---

## 🔍 Analysis Summary
- Majority of orders are successfully delivered
- **'Unavailable'** is the most common non-delivery status, indicating operational or supply-chain issues
- Delivered orders generated approximately **₹13+ Crore** in revenue
- **Credit cards** are the most preferred payment method
- **São Paulo (SP)** is the top customer region by delivered orders

---

## 📈 Key Business Insights
- Revenue is generated only from delivered orders, making delivery performance critical
- A small number of product categories contribute most of the revenue
- Payment behavior is dominated by card-based transactions
- Customer demand is concentrated in specific geographic regions

---

## ▶️ How to Run This Project
1. Import the Olist CSV files into a SQL database (MySQL / PostgreSQL)
2. Execute the queries in `sql_queries.sql`
3. Review the insights in `insights.md`

---

## 📂 Repository Contents
- `sql_queries.sql` → All SQL queries used in the analysis
- `insights.md` → Business insights summary

---

## 🚀 Conclusion
This project demonstrates my ability to use SQL to analyze large datasets, translate business questions into queries, and present actionable insights.
It reflects real-world data analyst responsibilities in an e-commerce context.
