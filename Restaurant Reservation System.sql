select Customers.Customername 
from Customers join Reservations on Customers.CustomerID=Reservations.CustomerID
select Reservations.ReservationID from Reservations
select ReservationID,count(Reservations.ReservationID) as reservation_number from Reservations
group by ReservationID
order by reservation_number asc
select Customers.Customername,Reservations.Reservartiondate 
from Customers join Reservations on Customers.CustomerID=Reservations.CustomerID
where Customers.Customername='Jason' 
and Reservations.Reservartiondate  < '2020-01-01'
group by Customers.Customername,Reservations.Reservartiondate 
select Reservations.ReservationID,count(Reservations.ReservationID) as reservation_number 
from Reservations
group by  Reservations.ReservationID
order by reservation_number desc




 
