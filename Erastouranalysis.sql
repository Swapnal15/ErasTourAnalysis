Select * from  ticketsales.erastour;

-- Average ticket cost per city in USA
SELECT  ShowVenue, avg(TicketCost) as AvgTicketCost
FROM erastour
group by ShowVenue
Order by AvgTicketCost desc;

-- Number of tickets sold per city
Select ShowVenue, count(1) AS Count
from erastour
group by ShowVenue
order by Count  desc;

-- Tickets soucrce count 
Select Ticketssource, count(1) AS Count from erastour
group by Ticketssource
order by Count desc;

-- Number of Lover Fest Tickets per city
select ShowVenue,sum(LoverFestTickets='Yes') as NumberOfLoverFestTicket,
sum(LoverFestTickets='No') as NumberOfNoLoverFestTickets
from erastour
group by ShowVenue
order by  NumberOfLoverFestTicket,NumberOfNoLoverFestTickets ;










