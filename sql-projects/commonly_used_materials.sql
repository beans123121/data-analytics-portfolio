-- =========================================
-- Project Title: Material Wastage Analysis
--
-- Objective:
-- Identify aircraft materials with the highest wastage quantities.
--
-- Business Question:
-- Which materials generate the highest wastage and may require tighter inventory control?
--
-- Skills Used:
-- SUM
-- GROUP BY
-- ORDER BY
-- Arithmetic Operations
--
-- I used:
-- SUM() to calculate total wastage per material by aggregating differences between issued and used quantities
-- GROUP BY to group records by part_number for material-level analysis
-- WHERE clause to filter only cases where issued quantity is greater than used quantity
-- ORDER BY to rank materials from highest to lowest wastage
-- Arithmetic operation (quantity_issued - quantity_used) to compute actual wastage per transaction
--
-- Insight:
-- Certain materials consistently generate higher wastage, indicating inefficiencies in inventory allocation or usage planning. 
-- Reducing excess issuance and improving material handling processes may help minimize waste and associated costs.
--
-- Observation:
-- Only a subset of materials contributes significantly to total wastage.
-- Wastage is not evenly distributed across all part numbers.
-- Some materials show repeated differences between issued and used quantities.
-- Many parts show little to no wastage, indicating more efficient usage patterns.

SELECT 
    part_number,
    SUM(quantity_issued - quantity_used) AS total_wastage
FROM aircraft_materials
WHERE quantity_issued > quantity_used
GROUP BY part_number
ORDER BY total_wastage DESC;
