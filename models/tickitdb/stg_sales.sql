{{ config (
    materialized="table"
)}}

--Percentage of price paid commission per seller

SELECT
  1.0 * commission / pricepaid AS commission_pct,
  commission,
  pricepaid
FROM tickitdb.sales
LIMIT 100