# Material Credit Back Analysis

## Overview
This project analyzes aircraft material returns (credited back items) to identify which parts are frequently returned to the warehouse. Understanding credit-back patterns helps improve inventory accuracy, reduce unnecessary re-ordering, and enhance material handling processes in aircraft maintenance operations.

---

## Business Question
Which aircraft materials are most frequently credited back to the warehouse, and what does this indicate about inefficiencies in material issuance and usage?

---

## Data Source
The dataset was extracted from Quantum Control, an ERP system powered by Oracle used for aircraft maintenance and inventory management. The data includes material issuance and usage records across multiple aircraft within a single customer environment.

---

## Analysis Approach
Credit-back quantities were calculated using the difference between issued and used materials. This assumes that unused issued materials are returned to the warehouse and recorded as credited back.

---

## SQL Query Used

```sql
-- Credited back items using adjustment logic

SELECT 
    part_number,
    SUM(quantity_issued - quantity_used) AS credited_back
FROM aircraft_materials
WHERE quantity_issued > quantity_used
GROUP BY part_number
ORDER BY credited_back DESC;
