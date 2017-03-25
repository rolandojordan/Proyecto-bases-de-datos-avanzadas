UPDATE dbo.DimEmployee
SET Region = 'EU'
WHERE Country = 'UK';

UPDATE dbo.DimCustomer
SET Region = 'EU'
WHERE Country = 'Germany' or Country = 'Sweden' or 
	Country = 'Spain' or Country = 'UK' or
	Country = 'France' or Country = 'Switzerland' or
	Country = 'Italy' or Country = 'Portugal' or
	Country = 'Ireland' or Country = 'Belgium' or
	Country = 'Norway' or Country = 'Denmark' or
	Country = 'Finland' or Country = 'Poland' or
	Country = 'Austria';

UPDATE dbo.DimCustomer
SET Region = 'DF'
WHERE Country = 'Mexico';

UPDATE dbo.DimCustomer
SET Region = 'BA'
WHERE Country = 'Argentina';
