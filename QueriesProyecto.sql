--QUERIES DB SQL
--Q1 Cual es el producto mas vendido en 1996
select top 1 p.ProductName
from Northwind.dbo.Products p, Northwind.dbo.[Order Details] od, Northwind.dbo.Orders o
where p.ProductID = od.ProductID and od.OrderID = o.OrderID and YEAR(OrderDate) = '1996'
group by p.ProductName
Order by sum(od.Quantity) desc

--Q2
select sum((od.UnitPrice*od.Quantity)*(1-od.Discount)) as Ventas
from Northwind.dbo.[Order Details] od, Northwind.dbo.Orders o
where od.OrderID = o.OrderID and YEAR(OrderDate) = '1996'
order by Ventas desc

--Q3
select sum((od.UnitPrice*od.Quantity)*(1-od.Discount)) as VentasTotal
from Northwind.dbo.[Order Details] od, Northwind.dbo.Orders o
where od.OrderID = o.OrderID
order by VentasTotal

--Q4
select top 1 e.Region
from Northwind.dbo.Employees e, Northwind.dbo.Orders o, Northwind.dbo.[Order Details] od
where od.OrderID = o.OrderID and o.EmployeeID = e.EmployeeID and YEAR(OrderDate) = '1997'
group by e.Region
Order by sum((od.UnitPrice*od.Quantity)*(1-od.Discount)) desc

--Q5
Declare @region varchar(60)
SET @region = (
select top 1 e.Region
from Northwind.dbo.Employees e, Northwind.dbo.Orders o, Northwind.dbo.[Order Details] od
where od.OrderID = o.OrderID and o.EmployeeID = e.EmployeeID and YEAR(OrderDate) = '1997'
group by e.Region
order by sum((od.UnitPrice*od.Quantity)*(1-od.Discount)) desc)

select top 1 e.Country
from Northwind.dbo.Employees e, Northwind.dbo.Orders o, Northwind.dbo.[Order Details] od
where od.OrderID = o.OrderID and o.EmployeeID = e.EmployeeID and YEAR(OrderDate) = '1997' and e.Region = @region
group by e.Country
order by sum((od.UnitPrice*od.Quantity)*(1-od.Discount)) desc

--Q6
Declare @region varchar(60)
SET @region = (
select top 1 e.Region
from Northwind.dbo.Employees e , Northwind.dbo.[Order Details] od, Northwind.dbo.Orders o
where od.OrderID = o.OrderID and o.EmployeeID = e.EmployeeID and year(OrderDate) = '1997'
group by e.Region
order by sum((od.UnitPrice*od.Quantity)*(1-od.Discount)) desc)

Declare @country varchar(60)
SET @country = (
select top 1 e.Country
from Northwind.dbo.[Order Details] od, Northwind.dbo.Orders o, Northwind.dbo.Employees e
where od.OrderID = o.OrderID and o.EmployeeID = e.EmployeeID and YEAR(OrderDate) = '1997' and e.Region = @region
group by e.Country
order by sum((od.UnitPrice*od.Quantity)*(1-od.Discount)) desc)

select top 1 city
from Northwind.dbo.[Order Details] od, Northwind.dbo.Orders o, Northwind.dbo.Employees e
where e.Country = @country
--Q7
select sum((od.UnitPrice*od.Quantity)*(1-od.Discount)) as Ventas
from Northwind.dbo.[Order Details] od, Northwind.dbo.Orders o
where od.OrderID = o.OrderID and  YEAR(OrderDate) = '1997'
order by Ventas

--Q8
select sum((od.UnitPrice*od.Quantity)*(1-od.Discount)) as VentasTotales
from Northwind.dbo.[Order Details] od, Northwind.dbo.Orders o
where od.OrderID = o.OrderID
order by VentasTotales
