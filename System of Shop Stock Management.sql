select 
*from Products where ProductStock>5
select Customers.Customername ,Customers.Customersurname, Products.Productname
from Sales inner join Products on Sales.ProductID=Products.ProductID
inner join Customers on Sales.CustomerID=Customers.CustomerID
where Customers.Customername='Jason' and Customers.Customersurname='Statton'
select sum(number) as total_sales from Sales 
where Sales.SalesDate='2024-01-01'
select Products.ProductCategory,sum(Products.ProductStock) as stock_number from Products
group by Products.ProductCategory 
select Products.Productname,sum(Sales.Number) as sales_number 
from Products inner join Sales on Products.ProductID=Sales.ProductID
group by Products.Productname
order by sales_number desc
