-- =========================================
-- Project Title: Material Credit Back Analysis
--
-- Objective:
-- Identify aircraft materials with the highest credited-back quantities.
--
-- Business Question:
-- Which materials generate the highest credited-back quantities and may indicate inefficiencies in material issuance and planning?
--
-- Skills Used:
-- SUM
-- GROUP BY
-- ORDER BY
-- Arithmetic Operations
--
-- I used:
-- SUM() to calculate total credited-back quantity per material by aggregating differences between issued and used quantities
-- GROUP BY to group records by part_number for material-level analysis
-- WHERE clause to filter only cases where issued quantity is greater than used quantity
-- ORDER BY to rank materials from highest to lowest credited-back quantity
-- Arithmetic operation (quantity_issued - quantity_used) to compute actual credited-back quantity per transaction
--
-- Insight:
-- Certain materials consistently generate higher credited-back quantities, indicating possible over-issuance during maintenance operations. 
-- Improving forecasting accuracy and material issuance planning may help reduce unnecessary returns and improve operational efficiency.
--
-- Observation:
-- Only a subset of materials contributes significantly to total credited-back quantities.
-- Credit-back activity is not evenly distributed across all part numbers.
-- Some materials show repeated differences between issued and used quantities.
-- Many parts show little to no credited-back quantities, indicating more controlled or accurate issuance patterns.

SELECT 
    part_number,
    SUM(quantity_issued - quantity_used) AS credited_back
FROM aircraft_materials
WHERE quantity_issued > quantity_used
GROUP BY part_number
ORDER BY credited_back DESC;
