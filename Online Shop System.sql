select * from Products
where Stock=0
select Customers.Customername,Orders.Ordername 
from Customers join Orders on  Customers.CustomerID=Orders.CustomerID
where Customers.Customername='Jack'
select Orders.Ordername,sum(Products.Stock) as total_stock
from Orders join Products on Orders.ProductID=Products.ProductID
group by Orders.Ordername
order by total_stock desc
select Categories.Categoryname,sum(Products.Stock*Products.Price) as total_price
from  Categories join Products on Categories.CategoryID=Products.CategoryID 
where Categories.Categoryname='Technology'
group by Categories.Categoryname
select	Orders.Orderdate,sum(Products.Stock*Products.Price) as total_price
from  Orders join Products on Orders.ProductID=Products.ProductID 
where Orders.Orderdate='2024-01-07'
group by Orders.Orderdate