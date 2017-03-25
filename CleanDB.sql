UPDATE dbo.Employees
SET Region = 'EU'
WHERE Country = 'UK';

UPDATE dbo.Customers
SET Region = 'EU'
WHERE Country = 'Germany' or Country = 'Sweden' or 
	Country = 'Spain' or Country = 'UK' or
	Country = 'France' or Country = 'Switzerland' or
	Country = 'Italy' or Country = 'Portugal' or
	Country = 'Ireland' or Country = 'Belgium' or
	Country = 'Norway' or Country = 'Denmark' or
	Country = 'Finland' or Country = 'Poland' or
	Country = 'Austria';

UPDATE dbo.Customers
SET Region = 'DF'
WHERE Country = 'Mexico';

UPDATE dbo.Customers
SET Region = 'BA'
WHERE Country = 'Argentina';

UPDATE dbo.Customers
SET Fax = Phone
WHERE Fax is NULL;

UPDATE dbo.Orders
SET ShipRegion = 'EU'
WHERE ShipCountry = 'Germany' or ShipCountry = 'Sweden' or 
	ShipCountry = 'Spain' or ShipCountry = 'UK' or
	ShipCountry = 'France' or ShipCountry = 'Switzerland' or
	ShipCountry = 'Italy' or ShipCountry = 'Portugal' or
	ShipCountry = 'Ireland' or ShipCountry = 'Belgium' or
	ShipCountry = 'Norway' or ShipCountry = 'Denmark' or
	ShipCountry = 'Finland' or ShipCountry = 'Poland' or
	ShipCountry = 'Austria';


UPDATE dbo.Orders
SET ShipRegion = 'DF'
WHERE ShipCountry = 'Mexico';

UPDATE dbo.Orders
SET ShipRegion = 'BA'
WHERE ShipCountry = 'Argentina';

UPDATE dbo.Orders
SET ShipPostalCode = 'D4TGH'
WHERE ShipCountry = 'Ireland';

UPDATE dbo.Orders
SET ShipPostalCode = '00000'
WHERE ShipPostalCode is NULL;


UPDATE dbo.Suppliers
SET Region = 'EU'
WHERE Country = 'Germany' or Country = 'Sweden' or 
	Country = 'Spain' or Country = 'UK' or
	Country = 'France' or Country = 'Switzerland' or
	Country = 'Italy' or Country = 'Portugal' or
	Country = 'Ireland' or Country = 'Belgium' or
	Country = 'Norway' or Country = 'Denmark' or
	Country = 'Finland' or Country = 'Poland' or
	Country = 'Austria'or Country = 'Netherlands';

UPDATE dbo.Suppliers
SET Region = 'DF'
WHERE Country = 'Mexico';

UPDATE dbo.Suppliers
SET Region = 'BA'
WHERE Country = 'Argentina';

UPDATE dbo.Suppliers
SET Region = 'AS'
WHERE Country = 'Japan' or Country = 'Singapore';

UPDATE dbo.Suppliers
SET Region = 'SP'
WHERE Country = 'Brazil';

UPDATE dbo.Suppliers
SET Fax = Phone
WHERE Fax is NULL;

UPDATE dbo.Suppliers
SET HomePage = 'www.notiene.com'
WHERE HomePage is NULL;












