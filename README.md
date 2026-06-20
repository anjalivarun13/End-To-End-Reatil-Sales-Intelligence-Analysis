# 📊 Retail Sales Intelligence Dashboard

## Overview

The Retail Sales Intelligence Dashboard is an end-to-end SQL analytics project developed using MySQL and Power BI. The project transforms raw retail transaction data into actionable business insights through data exploration, customer segmentation, product performance analysis, reporting views, and dashboard visualization.

---

## 🎯 Business Problem

This project addresses key business questions:

- Which products generate the highest revenue?
- Which customers contribute the most value?
- How does sales performance change over time?
- Which product categories drive overall revenue?
- How can customers be segmented based on purchasing behavior?
- Which products are underperforming? 
- Which customers are at risk of becoming inactive? 
- What opportunities exist to improve revenue and customer retention? 


---

## 🛠️ Tech Stack

- MySQL
- Power BI

---

## 🧠 SQL Skills Demonstrated

### Data Preparation
✅ Data Loading  
✅ Data Validation  
✅ Data Cleaning  

### Core SQL
✅ Joins  
✅ Aggregate Functions  
✅ CASE Statements  
✅ Date Functions  
✅ Subqueries  

### Advanced SQL
✅ Common Table Expressions (CTEs)  
✅ Window Functions  
✅ ROW_NUMBER()  
✅ LAG()  
✅ Running Totals  
✅ Moving Averages  

### Business Analytics
✅ Magnitude Analysis  
✅ Ranking Analysis  
✅ Change Over Time Analysis  
✅ Performance Analysis  
✅ Part-To-Whole Analysis  
✅ Customer Segmentation  
✅ Product Segmentation  

### Reporting
✅ View Creation  
✅ KPI Development  
✅ Reporting Layer Design  

---

## 📂 Dataset Summary

| Table | Records |
|---------|---------:|
| fact_sales | 60,398 |
| dim_customers | 18,484 |
| dim_products | 294 |

**📈 Analysis Period:** December 2010 – January 2014

---

## Project Workflow

Data Loading → Data Cleaning → EDA → Business Analysis → Segmentation → Reporting Views → Power BI Dashboard

---

## Key SQL Analysis Performed

- Exploratory Data Analysis (EDA)
- Magnitude Analysis
- Ranking Analysis
- Change Over Time Analysis
- Cumulative Analysis
- Performance Analysis
- Customer Segmentation
- Product Segmentation

---

## 📈 Business Impact Metrics

### 📦 1.Product Dashboard

| Metric | Value |
|----------|----------:|
| Products With Sales | 130 |
| Total Sales | 29.36M |
| Total Quantity Sold | 60.42K |
| Average Selling Price | 1.09K |
| Average Monthly Revenue | 15.54K |

### 👥 2.Customer Dashboard

| Metric | Value |
|----------|----------:|
| Total Customers | 18.48K |
| Total Sales | 29.36M |
| Total Orders | 28K |
| Average Monthly Spend | 457.96 |
| Average Order Value | 911.78 |

---

## 💡 Business Insights

### 👥 1.Customer Segmentation:

| Segment | Share |
|----------|----------:|
| New Customers | 80.22% |
| Regular Customers | 11.02% |
| VIP Customers | 8.76% |

**Key Insight:**

💡 VIP customers represent less than 10% of the customer base but contribute significantly to overall revenue.
  
💡 Strong opportunity exists to convert New Customers into long-term loyal customers.

---

### 📦 2.Product Segmentation:

| Segment | Share |
|----------|----------:|
| Mid-Range | 57.10% |
| High Performer | 34.92% |
| Low Performer | 7.98% |

**Key Insight:**
  
💡 High-performing products drive a substantial share of business revenue.

💡 More than half of products belong to the Mid-Range category.

---

### 💰 3.Revenue Contribution:

| Category | Revenue Share |
|----------|----------:|
| Bikes | 96.46% |
| Accessories | 2.39% |
| Clothing | ~1% |

**Key Insight:**

💡 Revenue is heavily concentrated in the Bikes category.

💡 Accessories and Clothing provide cross-selling opportunities for future growth.

---

### 📦 4.Product Utilization:

| Metric | Value |
|----------|----------:|
| Total Products Available | 294 |
| Products Generating Sales | 130 |
| Utilization Rate | 44.20% |

**Key Insight:**

  💡 Only 44.2% of products generated sales during the analysis period.
  
  💡 Product portfolio optimization can improve inventory efficiency.

---

## 🏗️ Reporting Layer

### 👥 1.customer_report:
- Customer Segment
- Age Group
- Total Orders
- Total Sales
- Recency
- Lifespan
- Average Order Value
- Average Monthly Spend

### 📦 2.product_report:
- Product Segment
- Total Orders
- Total Sales
- Product Recency
- Average Selling Price
- Average Order Revenue
- Average Monthly Revenue

---

## 📸 Dashboard Preview

### 📦 Product Analysis Dashboard
![Product Dashboard](https://github.com/anjalivarun13/End-To-End-Reatil-Sales-Intelligence-Analysis/blob/main/Screenshots/Product%20Analysis%20page.png)

### 👥 Customer Analysis Dashboard
![Customer Dashboard](https://github.com/anjalivarun13/End-To-End-Reatil-Sales-Intelligence-Analysis/blob/main/Screenshots/Customer%20Analysis%20Page.png)

### 📊 Detail Dashboard
![Detail Dashboard](https://github.com/anjalivarun13/End-To-End-Reatil-Sales-Intelligence-Analysis/blob/main/Screenshots/Detail%20page.png)

---

## 📁 Repository Structure

```text
RETAIL SALES ANALYSIS
│
├── Dashboard
│   └── sales.pbix
│
├── Dataset
│   ├── Report Table
│   ├── dim_customers.csv
│   ├── dim_products.csv
│   └── fact_sales.csv
│
├── Project Report
│   ├── Project Report.docx
│   └── Project Report.pdf
│
├── Screenshot
│   ├── Customer Analysis Page.png
│   ├── Detail page.png
│   └── Product Analysis page.png
│
├── SQL Queries Scripts
│   ├── 01.Dataset_loading.sql
│   ├── 02.Database_Exploration.sql
│   ├── 03.Dimension_exploration.sql
│   ├── 04.Date_Exploration.sql
│   ├── 05.Measure_exploration.sql
│   ├── 06.Magnitude Analysis.sql
│   ├── 07.Ranking Analysis.sql
│   ├── 08.Change Over Time Analysis.sql
│   ├── 09.Cumulative Analysis.sql
│   ├── 10.Performance Analysis.sql
│   ├── 11.Part-To-Whole Analysis.sql
│   ├── 12.Data Segmentation.sql
│   ├── 13.customer_report.sql
│   └── 14.Product Report.sql
│
└── README.md
```

---

## 🚀 Key Takeaways

✅ Built an end-to-end SQL analytics solution using MySQL

✅ Applied advanced SQL concepts including CTEs, Window Functions, ROW_NUMBER(), and LAG()

✅ Developed reusable reporting views for business intelligence reporting

✅ Generated actionable insights from 60K+ sales records

✅ Integrated SQL reporting layers with Power BI dashboards

---

## 💡 Business Recommendations:

### 1. Product Strategy:
- Focus inventory planning on high-performing products.
- Review low-performing products for optimization or discontinuation.
- Increase promotion of profitable product categories.

### 2. Customer Strategy:
- Develop loyalty programs for VIP customers.
- Launch retention campaigns targeting inactive customers.
- Create incentives to convert New customers into Regular and VIP customers.

### 3. Revenue Growth Strategy:
- Expand high-performing product categories.
- Implement cross-selling opportunities for accessories and clothing.
- Continuously monitor customer and product performance using analytical reporting.

---

## 👩‍💻 Author

**Anjali Varun**

📧 anjalivarun377@gmail.com

🔗 GitHub: https://github.com/anjalivarun13

🔗 LinkedIn: https://www.linkedin.com/in/anjali-varun
