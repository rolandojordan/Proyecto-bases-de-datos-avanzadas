--Q1
select top 1 dp.ProductName
from FactSales fs, DimProduct dp, DimTime dt
where fs.ProductID = dp.ProductID and YEAR(fs.OrderDate) = '1996'
group by dp.ProductName
order by sum(Quantity) desc

--Q2
select sum(fs.Total) as Ventas
from FactSales fs
where YEAR(fs.OrderDate) = '1996'

--Q3
select sum(fs.Total) as VentasTotales
from FactSales fs

--Q4
select top 1 de.Region
from DimEmployee de, FactSales fs
where de.EmployeeID = fs.EmployeeID and YEAR(fs.OrderDate) = '1997'
group by de.Region


--Q5
declare @region varchar(30)

set @region = (
select top 1 de.Region
from DimEmployee de, FactSales fs
where de.EmployeeID = fs.EmployeeID and YEAR(fs.OrderDate) = '1997'
group by de.Region
)

select top 1 de.Country
from DimEmployee de, FactSales fs
where de.EmployeeID = fs.EmployeeID and YEAR(fs.OrderDate) = '1997' and de.Region = @region
group by de.Country

--Q6
declare @country varchar(30)

set @region = (
select top 1 de.Region
from DimEmployee de, FactSales fs
where de.EmployeeID = fs.EmployeeID and YEAR(fs.OrderDate) = '1997'
group by de.Region
)

SET @country = (
select top 1 Country
from  DimEmployee de, FactSales fs
where de.EmployeeID = fs.EmployeeID and YEAR(fs.OrderDate) = '1997' and de.Region = @region
group by de.Country
)

select top 1 de.City
from DimEmployee de, FactSales fs
where de.EmployeeID = fs.EmployeeID and YEAR(fs.OrderDate) = '1997' and de.Country = @country
group by de.City

--Q7
select sum(fs.Total) as Ventas
from FactSales fs
where YEAR(fs.OrderDate) = '1997'

--Q8
select sum(fs.Total) as VentasTotales
from FactSales fs
