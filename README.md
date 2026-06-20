# 1. Project Overview

The objective of this project was to perform advanced business analysis using SQL, Excel, and Power BI. The project focused on combining multiple datasets, calculating business KPIs, analyzing sales performance, and building an interactive dashboard for management reporting.

The analysis was conducted on the Superstore Sales Dataset containing customer information, sales transactions, product categories, profit, discounts, and regional data.

---

# 2. Tools & Technologies Used

* MySQL Workbench
* Microsoft Excel
* Power BI Desktop

### Techniques Used

* SQL JOIN Operations
* Aggregate Functions
* KPI Calculations
* Pivot Tables
* Data Visualization
* Business Intelligence Dashboarding

---

# 3. Dataset Description

The project utilized two related tables:

### Orders Table

* Order ID
* Order Date
* Customer ID
* Product Category
* Sales
* Quantity
* Profit
* Discount

Total Records: 9,800

### Customers Table

* Customer ID
* Customer Name
* Region
* Segment

Total Unique Customers: 793

Both tables were connected using Customer ID.

---

# 4. Data Preparation

The following preprocessing steps were performed:

* Dataset cleaning and validation
* Removal of duplicate customer records
* Creation of separate Orders and Customers tables
* Data import into MySQL
* Relationship creation using Customer ID
* SQL JOIN implementation

This process ensured accurate business reporting and KPI calculations.

---

# 5. SQL Analysis

### INNER JOIN

Orders and Customers tables were joined using Customer ID to create a consolidated dataset for analysis.

### Business Queries Executed

#### Total Sales by Region

Used SQL aggregation functions to identify regional sales performance.

#### Profit Margin by Category

Calculated profitability of each product category.

#### Monthly Sales Trend

Analyzed monthly sales performance to identify seasonal patterns.

#### Top Customers by Revenue

Identified high-value customers contributing most to sales.

---

# 6. Excel Analysis

Advanced Excel analysis was performed using Pivot Tables.

### Pivot Reports Created

* Sales by Region
* Profit by Category
* Monthly Sales Trend
* Top Customers Analysis

### Calculated Metrics

#### Profit Margin

Profit Margin = Profit / Sales

#### Average Order Value

Average Order Value = Total Sales / Total Orders

### Excel Functions Used

* IF()
* SUMIFS()
* COUNTIFS()

These calculations helped evaluate business performance and customer behavior.

---

# 7. Power BI Dashboard Development

An interactive KPI dashboard was developed using Power BI.

### KPI Cards

| KPI             | Value  |
| --------------- | ------ |
| Total Sales     | ₹2.26M |
| Total Profit    | ₹311K  |
| Profit Margin   | 14%    |
| Total Customers | 793    |

### Visualizations Created

1. Sales by Region
2. Profit by Category
3. Customer Segment Distribution
4. Monthly Sales Trend
5. Top Customers Analysis
6. Interactive Filters and Slicers

### Dashboard Filters

* Region
* Category
* Segment
* Order Date

The dashboard enables dynamic analysis and business decision-making.

---

# 8. Key Findings

### Regional Analysis

* West Region generated the highest sales revenue of ₹0.71M.
* South Region recorded the lowest sales revenue of ₹0.39M.

### Category Analysis

* Technology category generated the highest profit of ₹109K.
* Furniture category generated profit of ₹104K.
* Office Supplies generated profit of ₹98K.

### Customer Segment Analysis

* Consumer Segment: 52.05%
* Corporate Segment: 30.13%
* Home Office Segment: 17.82%

Consumer customers represented the largest share of the customer base.

### Monthly Trend Analysis

* Sales increased significantly during the final quarter.
* Highest sales were recorded in November at ₹0.35M.
* Strong sales performance continued in December.

---

# 9. Business Insights

### Sales Performance

West region generated the highest sales of ₹0.71M and contributed significantly to total business revenue.

### Profitability

Technology products delivered the highest profit of ₹109K and emerged as the most profitable category.

### Customer Insights

Consumer segment accounted for 52.05% of total customers and remained the most valuable customer group.

### Seasonal Trends

Sales peaked during November and December, indicating strong seasonal demand.

### Financial Performance

The company achieved a healthy profit margin of 14% with total profit of ₹311K.

---

# 10. Recommendations

### Regional Growth

Increase marketing and promotional activities in the South Region to improve sales performance.

### Product Strategy

Focus on Technology products because they generate the highest profitability.

### Customer Retention

Implement loyalty programs and personalized offers for Consumer segment customers.

### Seasonal Campaigns

Plan inventory and marketing campaigns before November and December to maximize revenue during peak periods.

### Performance Monitoring

Regularly track low-performing regions and categories to identify growth opportunities.

---

# 11. Learning Outcomes

Through this project, I learned:

* Working with relational databases
* SQL JOIN operations
* Business KPI calculations
* Data cleaning and preparation
* Advanced Excel analysis
* Power BI dashboard development
* Business performance interpretation
* Data-driven decision making

---

# 12. Conclusion

This project successfully transformed raw business data into meaningful insights using SQL, Excel, and Power BI. The analysis revealed that the West Region and Technology Category are the primary drivers of revenue and profit. The dashboard provides management with a clear view of sales performance, customer behavior, and profitability, enabling better strategic decisions and business growth.
