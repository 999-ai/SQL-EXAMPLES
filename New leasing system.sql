select Vehicles.Vehicletrademark 
from Vehicles join Leasings on Vehicles.VehicleID=Leasings.VehicleID
select  Customers.Customername,Vehicles.Vehicletrademark 
from Customers join Vehicles on Customers.CustomerID=Vehicles.CustomerID
join Leasings on Vehicles.VehicleID=Leasings.LeasingID
where Customers.Customername='Selin'

select Vehicles.Vehicletrademark, count(Leasings.LeasingID) as leasing_number
from Vehicles 
join Leasings on Vehicles.VehicleID = Leasings.VehicleID
where Vehicles.Vehicletrademark = 'BMW'
group by Vehicles.Vehicletrademark
select Vehicles.Vehicletrademark, max(subquery.Leasing_time) as maxleasing_time
from (select Leasings.LeasingID,DATEDIFF(MONTH, Leasings.[Leasing startdate], Leasings.[Leasing finaldate]) AS Leasing_time
    FROM Leasings
    JOIN Vehicles ON Leasings.VehicleID = Vehicles.VehicleID
) AS subquery
JOIN Vehicles ON subquery.VehicleID = Vehicles.VehicleID
GROUP BY Vehicles.Vehicletrademark;
select Vehicles.Vehicletrademark,max(price) as max_priceperday from Vehicles
group by  Vehicles.Vehicletrademark
order by max_priceperday desc






