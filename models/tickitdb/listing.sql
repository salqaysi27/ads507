--Find out the cont of VIP tickets that were listed (price of more than $2000)

select count(*)
from tickitdb.listing
where priceperticket > 2000
