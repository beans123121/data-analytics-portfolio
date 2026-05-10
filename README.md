# Aircraft Materials Inventory Analysis Portfolio

This project contains three (3) SQL-based analyses on aircraft maintenance materials to understand usage patterns, wastage, and credit-back activity using ERP data extracted from Quantum Control.

## Overview
This project analyzes aircraft maintenance materials to identify usage patterns and material wastage. The objective is to support improved inventory planning, reduce inefficiencies, and enhance operational decision-making in aircraft maintenance processes.

## Projects Included

### 1. Commonly Used Materials Analysis
Identifies the most frequently used aircraft materials based on total quantity issued.

### 2. Material Wastage Analysis
Analyzes materials with the highest wastage to identify inefficiencies in inventory usage.

### 3. Material Credit Back Analysis
Identifies materials returned to the warehouse due to over-issuance or unused stock.

---

## Data Source & Extraction Process

The dataset was extracted from Quantum Control, an ERP system powered by Oracle used for aviation maintenance and inventory management.

Using this system, material records were extracted from five different aircraft under a single customer and consolidated into a single dataset for analysis.

---

## Data Cleaning Process

Before performing analysis in PostgreSQL, the dataset underwent several cleaning steps:

1. Data Extraction  
   - Extracted raw material records from the Quantum Control ERP system.

2. Data Cleaning  
   - Removed all #N/A values and blank cells to ensure data consistency.  
   - Deleted columns that were not relevant to the scope of analysis.  
   - Retained only fields required for usage and wastage analysis, such as part numbers and quantity values.
   - Combined the datas from 5 different CSV files.

3. Data Standardization  
   - Standardized column naming conventions.  
   - Replaced spaces with underscores (_) for SQL compatibility.  
   - Ensured consistent formatting across all column names for easier querying.

---

## Database & Analysis Tool

The cleaned dataset was imported into PostgreSQL, where all analysis was performed using SQL.

---

## Data Privacy Notice

The datasets used in this project are confidential and proprietary to the customer. In compliance with data privacy and confidentiality requirements, the raw datasets are not included in this repository. Only SQL queries and analysis outputs are shared.

---

## Analysis Performed

SQL queries were used to extract key insights, including:

- Most frequently used aircraft materials  
- Material wastage analysis  
- Inventory inefficiencies  
- High-demand components  

Each query was designed to transform raw data into meaningful business insights.

---

## Methodology

1. Imported cleaned dataset into PostgreSQL  
2. Structured data into a relational table format  
3. Applied SQL aggregation functions such as SUM, GROUP BY, ORDER BY, and filtering conditions  
4. Derived insights from query results  
5. Formulated observations and business interpretations based on findings  

---

## Key Outcome

This analysis provides visibility into:

- Materials with the highest usage demand  
- Sources of material wastage  
- Opportunities for improved inventory allocation  
- Potential cost and operational inefficiencies  

---

## Tools Used

- Quantum Control (Oracle ERP System)  
- PostgreSQL  
- SQL
- MICROSOFT EXCEL

---

## Conclusion

This project demonstrates how raw ERP data can be transformed into actionable insights using SQL. By analyzing aircraft material usage and wastage, organizations can improve inventory planning, reduce operational delays, and optimize maintenance efficiency.
