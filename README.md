# ☕ Bright Coffee Shop Sales Analysis

This repository contains a comprehensive sales analysis for Bright Coffee Shop, covering the period **January to June 2023**. This project aims to analyze how products, time periods, store locations, and weekdays influence sales performance, helping guide strategic decisions for revenue growth and operational efficiency.

The analysis examines transactional data from multiple stores, time periods, and product categories, transforming raw sales records into actionable recommendations for the CEO and leadership team.

## 1️⃣ Problem Statement

Bright Coffee Shop initiated this analysis to address key business questions essential for data-driven decision-making:

* Which products and categories generate the most revenue?
* How does sales performance vary by time of day and day of the week?
* Are there differences in sales trends across store locations?
* Which products underperform and may require strategic adjustments?
* How can operations be optimized for peak performance periods?

This analysis uses historical sales data to identify high-performing products and stores, optimal selling periods, and growth opportunities across locations and product mixes.

## 2️⃣ Data Overview

* **Period Covered:** January – June 2023
* **Store Locations Analyzed:** 3 (Hell’s Kitchen, Astoria, Lower Manhattan)
* **Metrics Included:**

  * Revenue
  * Transaction counts
  * Units sold
* **Data Fields:**

  - `STORE_LOCATION`  
  - `TRANSACTION_DATE`  
  - `MONTH_ID`, `MONTH_NAME`  
  - `WEEKDAY`, `TIME_OF_DAY`  
  - `PRODUCT_CATEGORY`, `PRODUCT_TYPE`, `PRODUCT_DETAIL`  
  - `TOTAL_UNITS_SOLD`  
  - `TOTAL_TRANSACTIONS`  
  - `REVENUE`

### ⏰ Time-of-Day Buckets

The analysis divides the day into meaningful business segments:

| Time Range      | Bucket    |
| --------------- | --------- |
| 06:00 – 11:59   | Morning   |
| 12:00 – 16:59   | Afternoon |
| 17:00 – 19:59   | Evening   |
| All other times | Night     |


## 3️⃣ Key Findings

### 🗓️ 3.1 Monthly & Weekly Sales Trends

* Revenue **doubled** from R81,678 in January to R166,486 in June, showing strong upward momentum.
* Monthly revenue share grew steadily from **12% in January** to **24% in June.**
* A slight dip in February signals a possible seasonal slowdown, presenting opportunities for targeted promotions.
* Sales are **evenly distributed across the week**, with slight peaks on **Monday (14.6%)** and **Friday (14.5%)**.
* Strong **weekend activity** supports weekend staffing.

### 📍 3.2 Store Performance

* Revenue distribution across stores:

  * **Hell’s Kitchen:** 33.84%
  * **Astoria:** 33.23%
  * **Lower Manhattan:** 32.92%

* Transaction volume:

  * **Hell’s Kitchen:** Highest share at 34.02%
  * **Astoria:** Close second at 33.93%
  * **Lower Manhattan:** Slightly lower at 32.04%

> **Insight:** All three stores perform **remarkably evenly**, indicating a balanced customer base. Localized strategies can fine-tune performance but the chain benefits from uniform demand.

### 🕒 3.3 Time-of-Day Sales Patterns

Sales performance by time bucket:

#### **Morning (06:00 – 11:59)**

* Lower Manhattan: 63% of revenue
* Hell’s Kitchen: 59% 
* Astoria: 45%

#### **Afternoon (12:00 – 16:59)**

* Astoria: 34% of revenue
* Hell’s Kitchen: 30%
* Lower Manhattan: 26%

#### **Evening (17:00 – 19:59)**

* Astoria: 21% of revenue
* Hell’s Kitchen: 10%
* Lower Manhattan: 11%

#### **Night (20:00 onward)**

* Minimal activity (\~1% of revenue in Hell’s Kitchen)

> **Insight:** Morning and Afternoon dominate sales volume across all stores. Astoria shows a stronger evening trade, suggesting opportunities for later-day promotions.

### ☕ 3.4 Product Performance
Top revenue-generating products:

Barista Espresso – R90,000

Brewed Chai Tea – R80,000

Hot Chocolate – R75,000

Mid-performing products:

Gourmet Brewed Coffee – R70,000

Organic Brewed Coffee – R36,000

Underperformers:

Green Beans – ~R2,000

Chai (Tea) – ~R5,000

Black Tea – ~R4,000

Sugar-Free Syrup – ~R3,000

Insight: The top three products collectively account for a large portion of total revenue and should remain a priority in promotions and inventory. Underperforming products like Green Beans and Sugar-Free Syrup generate minimal returns and may need to be rotated out or targeted for specific niches.

### 📅 3.5 Weekday Sales Patterns

* Revenue is **evenly distributed throughout the week**, suggesting stable customer demand.
* Slight weekday leaders:

  * Monday: 14.6%
  * Friday: 14.5%
* Weekends maintain strong performance:

  * Saturday: 13.9%
  * Sunday: 14.1%
* Midweek (Tue–Thu) days perform nearly equally, enabling consistent staffing.

> **Insight:** Consistent weekday performance offers flexibility in scheduling and targeted marketing.

### 📦 3.6 Quantity Sold by Store and Day

* **Hell’s Kitchen** leads weekday sales, peaking on Fridays—suggesting a strong commuter or workday customer base.
* **Astoria** peaks on Saturdays, reflecting strong weekend community and leisure traffic.
* **Lower Manhattan** shows balanced demand across all days, with minor peaks on Tuesday and Wednesday.

## 4️⃣ Recommendations

✅ **Product Mix Strategy**

* Focus on top sellers (e.g. Barista Espresso, Brewed Coffee).
* Bundle mid-performing items for upselling opportunities.
* Reassess underperforming products for rotation or revised marketing.

✅ **Store-Level Optimization**

* Leverage the balanced performance of stores for localized testing.
* Use Hell’s Kitchen as a benchmark for store-level best practices.

✅ **Time-of-Day Optimization**

* Prioritize staffing and promotions during **Morning and Afternoon** peaks.
* Develop targeted strategies for Astoria’s stronger Evening trade.
* Consider loyalty incentives for slower evening and night periods.

✅ **Day-of-Week Alignment**

* Target promotional efforts on high-performing days:

  * Weekday rush in Hell’s Kitchen
  * Weekend spikes in Astoria

✅ **Operational Efficiency**

* Plan resources around consistent weekday patterns.
* Maintain flexibility for localized customer behaviors.

## 5️⃣ Project Files

### 📂 Input Files

* **Objective Documentation**
  * Defines analysis goals and key business questions.
* **Bright Coffee Shop Sales Data (CSV)**
  * Raw transactional sales data for January–June 2023.

### 📂 Working Files

* **Sales Analysis Workbook (Excel)**
* **SQL Analysis**
* **Project Plan (Miro)** 

### 📂 Output Files

* **Excel Analysis**
* **Final Report**


## 6️⃣ Tools & Technologies

* **SQL (Snowflake)**
* **Microsoft Excel**
* **Miro**
* **Canva**

## 7️⃣ Business Impact

This analysis enables Bright Coffee Shop to:

* **Maximize revenue** during peak time periods.
* **Optimize product offerings** for customer preferences.
* **Enhance operational efficiency** by aligning staffing and inventory with demand patterns.
* **Drive localized marketing strategies** for each store’s unique profile.
* **Sustain growth** through data-driven decision-making.


> **Note:** All data insights above are sourced directly from the Bright Coffee Shop sales analysis presentation delivered in June 2025.
