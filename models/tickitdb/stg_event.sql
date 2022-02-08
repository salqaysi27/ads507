--Find out if any of the concerts attended in 2008 was for Beyonce

select count(*)
from tickitdb.event
where event.eventname = "Beyonce"