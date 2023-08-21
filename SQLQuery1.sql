
with hotel as
(select * from dbo.hotel_18
union
select * from dbo.hotel_19
union
select * from dbo.hotel_20)


select
sum((stays_in_weekend_nights + stays_in_week_nights)*adr * (1-Discount))
from hotel
left join market_segment
on hotel.market_segment = market_segment.market_segment
