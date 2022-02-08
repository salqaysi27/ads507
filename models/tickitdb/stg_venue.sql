{{ config (
    materialized="table"
)}}

--Getting the total number of sales per venue city

SELECT
  v.venuecity,
  COUNT(*) AS num_sales
FROM tickitdb.sales s
JOIN tickitdb.event e
  ON e.eventid = s.eventid
JOIN tickitdb.venue v
  ON v.venueid = e.venueid
GROUP BY v.venuecity
ORDER BY num_sales DESC