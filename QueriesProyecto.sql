--1
-- Gorgonzola Telino
select TOP 1 p.ProductName
from Northwind.dbo.Products p , Northwind.dbo.[Order Details] od, Northwind.dbo.Orders o
where p.ProductID = od.ProductID and od.OrderID = o.OrderID and year(OrderDate) = '1996'
group by ProductName 
order by sum(quantity) desc

--2
select sum((od.UnitPrice*od.Quantity)*(1-od.Discount)) as Ventas
from Northwind.dbo.[Order Details] od, Northwind.dbo.Orders o
where od.OrderID = o.OrderID and YEAR(OrderDate) = '1996'
order by Ventas desc

--3
select sum((od.UnitPrice*od.Quantity)*(1-od.Discount)) as VentasTotal
from Northwind.dbo.[Order Details] od, Northwind.dbo.Orders o
where od.OrderID = o.OrderID
order by VentasTotal


--4 
select top 1 Region
from dbo.Products p , dbo.[Order Details] od, dbo.Orders o, dbo.Employees c
where p.ProductID = od.ProductID and od.OrderID = o.OrderID and o.EmployeeID = c.EmployeeID and year(OrderDate) = '1997'
group by Region
order by sum(quantity * (p.UnitPrice * 1-discount)) desc


--5
Declare @region varchar(60)

SET @region = (
select top 1 Region
from dbo.Products p , dbo.[Order Details] od, dbo.Orders o, dbo.Employees c
where p.ProductID = od.ProductID and od.OrderID = o.OrderID and o.EmployeeID = c.EmployeeID and year(OrderDate) = '1997'
group by Region
order by sum(quantity * (p.UnitPrice * 1-discount)) desc )


select top 1 Country
from Products p , [Order Details] od, Orders o, Employees c
where p.ProductID = od.ProductID and od.OrderID = o.OrderID and o.EmployeeID = c.EmployeeID and year(OrderDate) = '1997' and Region = @region
group by Country



--6

--Declare @region varchar(60)
Declare @country varchar(60)


SET @region = (
select top 1 Region
from dbo.Products p , dbo.[Order Details] od, dbo.Orders o, dbo.Employees e
where p.ProductID = od.ProductID and od.OrderID = o.OrderID and o.EmployeeID = e.EmployeeID and year(OrderDate) = '1997'
group by Region
order by sum(quantity * (p.UnitPrice * 1-discount)) desc )


SET @country = (select top 1 Country
from Products p , [Order Details] od, Orders o, Employees e
where p.ProductID = od.ProductID and od.OrderID = o.OrderID and o.EmployeeID = e.EmployeeID and year(OrderDate) = '1997' and Region = @region
group by Country
order by sum(quantity * (p.UnitPrice * 1-discount)))

select top 1 city
from Products p , [Order Details] od, Orders o, Employees e
where Country = @country


-- 7 
select sum((od.UnitPrice*od.Quantity)*(1-od.Discount)) as Revenue
from dbo.Products p , dbo.[Order Details] od, dbo.Orders o
where p.ProductID = od.ProductID and od.OrderID = o.OrderID and year(OrderDate) = '1997'
order by Revenue desc

--8 
select sum((od.UnitPrice*od.Quantity)*(1-od.Discount)) as Revenue
from dbo.Products p , dbo.[Order Details] od, dbo.Orders o
where p.ProductID = od.ProductID and od.OrderID = o.OrderID
order by Revenue desc
