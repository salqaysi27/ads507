{{ config (
    materialized="table"
)}}

--Number of users who bought ticketrs to out-of-state events

SELECT COUNT(DISTINCT u.userid)
FROM tickitdb.sales s
JOIN tickitdb.users u
  ON u.userid = s.buyerid
JOIN tickitdb.event e
  ON e.eventid = s.eventid
JOIN tickitdb.venue v
  ON v.venueid = e.venueid
    AND v.venuestate != u.state