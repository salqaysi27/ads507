{{ config (
    materialized="table"
)}}

--Tickets sold on each holiday in 2008

SELECT
  d.caldate,
  SUM(qtysold) AS total_tickets_sold
FROM tickitdb.sales s
JOIN tickitdb.date d
  ON d.dateid = s.dateid
GROUP BY d.caldate
ORDER BY total_tickets_sold DESC
