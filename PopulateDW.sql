

Insert into DimProduct
   select p.productId, p.productName, c.categoryName
   from Northwind.dbo.products p, Northwind.dbo.categories c
   where p.categoryID=c.categoryID;


Insert into DIMemployee
   select e.EmployeeID, e.FirstName + ' ' + e.LastName as Name, e.City, e.Country, e.Region,e.HireDate
   from Northwind.dbo.Employees e;

Insert into DIMCustomer
  select c.CustomerID, c.ContactName, c.City, c.Country, c.Region
  from Northwind.dbo.Customers c;

Insert into DimTime
select DISTINCT o.OrderDate
from Northwind.dbo.Orders o;

Insert into FactSales
select od.ProductID, o.EmployeeID, o.CustomerID, o.OrderDate , 
o.orderID, od.quantity, od.unitPrice, 
od.discount, 
od.unitPrice * od.quantity * od.discount , 
od.unitPrice * od.quantity - od.unitPrice * od.quantity * od.discount   
from Northwind.dbo.Orders o, Northwind.dbo.[Order Details] od 
where o.OrderID = od.OrderID;