-- Project Title: Most Commonly Used Materials
--
-- Purpose:
-- This query identifies which aircraft materials are used the most
-- based on total quantity issued during maintenance operations.
--
-- Skills Used:
-- SUM
-- GROUP BY
-- ORDER BY
-- LIMIT
--
-- I used:
-- SUM() to aggregate total issued quantities per material
-- GROUP BY to group records by part_number for individual analysis
-- ORDER BY to rank materials from highest to lowest usage
-- LIMIT to return only the top 15 most used materials for focused analysis
--
-- Insight:
-- Frequently used materials may require higher stock allocation and closer inventory monitoring to prevent shortages during maintenance operations. 
-- Without proper inventory planning, delays may occur due to supplier lead times affecting replenishment of critical parts.
--
-- Observation:
-- A small number of part numbers account for a large proportion of total usage.
-- The distribution of material usage is uneven across the dataset.
-- The top materials show significantly higher issuance volumes compared to others.
-- Most parts have relatively low usage, while only a few dominate total consumption.

SELECT
    part_number,
    SUM(quantity_issued) AS total_usage
FROM aircraft_materials
GROUP BY part_number
ORDER BY total_usage DESC
LIMIT 15;
