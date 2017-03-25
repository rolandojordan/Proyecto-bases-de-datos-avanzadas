--Q1
select top 1 dp.ProductName
from FactSales fs, DimProduct dp, DimTime dt
where fs.ProductID = dp.ProductID and YEAR(fs.OrderDate) = '1996'
group by dp.ProductName
Order by sum(fs.Quantity) desc

--Q2
select sum(fs.Total) as Ventas
from FactSales fs
where YEAR(fs.OrderDate) = '1996'
order by Ventas desc

--Q3
select sum(fs.Total) as VentasTotales
from FactSales fs
order by VentasTotales desc

--Q4
select top 1 de.Region
from DimEmployee de, FactSales fs
where de.EmployeeID = fs.EmployeeID and YEAR(fs.OrderDate) = '1997'
group by de.Region
order by sum(fs.Total) desc

--Q5
declare @region varchar(30)

set @region = (
select top 1 de.Region
from DimEmployee de, FactSales fs
where de.EmployeeID = fs.EmployeeID and YEAR(fs.OrderDate) = '1997'
group by de.Region
order by sum(fs.Total) desc
)

select top 1 de.Country
from DimEmployee de, FactSales fs
where de.EmployeeID = fs.EmployeeID and YEAR(fs.OrderDate) = '1997' and de.Region = @region
group by de.Country
order by sum(fs.total) desc

--Q6
declare @country varchar(30)

set @region = (
select top 1 de.Region
from DimEmployee de, FactSales fs
where de.EmployeeID = fs.EmployeeID and YEAR(fs.OrderDate) = '1997'
group by de.Region
order by sum(fs.Total) desc
)

SET @country = (
select top 1 Country
from  DimEmployee de, FactSales fs
where de.EmployeeID = fs.EmployeeID and YEAR(fs.OrderDate) = '1997' and de.Region = @region
group by de.Country
order by sum(total) desc
)

select top 1 de.City
from DimEmployee de, FactSales fs
where de.EmployeeID = fs.EmployeeID and YEAR(fs.OrderDate) = '1997' and de.Country = @country
group by de.City
order by sum(fs.Total) desc

--Q7
select sum(fs.Total) as Ventas
from FactSales fs
where YEAR(fs.OrderDate) = '1997'
order by Ventas desc

--Q8
select sum(fs.Total) as VentasTotales
from FactSales fs
order by VentasTotales desc
