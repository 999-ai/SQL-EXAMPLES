select *from Customers
select *from Vehicles
where Vehicletrademark ='Audi'
select Customers.Customername,Customers.Customersurname,Vehicles.Vehicletrademark
from Leasing join Customers on Leasing.CustomerID=Customers.CustomerID
join Vehicles on Leasing.VehicleID=Vehicles.VehicleID
where Customers.Customername='Kenan'
select Vehicletrademark,MAX(Price) as max_price,Vehiclemodel from Vehicles
group by Vehicletrademark,Vehiclemodel
order by max_price desc