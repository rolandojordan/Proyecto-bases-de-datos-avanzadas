# Bases-de-Datos-Avanzadas
## Práctica Data Warehousing con NorthwindDB y Tableau

Una vez que has creado tu base de datos NorthwindDB y tu DWNorthwind deberás ontegrar
en un documento lo siguiente.

1. Estatutos de creación de tablas para DWNorthwind. Indicando tipos de datos.
2. Estatutos de ETL para DWNorthwin indicando que acción o acciones se llevan a cabo en el  estatuto, por ejemplo:

```
ETL.
E01: INSERT INTO DIMemployee
SELECT e.EmployeeID, e.FirstName + ' ' + e.LastName as Name,
e.City, e.Country, e.Region,e.HireDate
FROM NorthwindDB.dbo.Employees e;
```

El estatuto E01 extrae la informacion de empleado de la NorthwindDB y la carga en la tabla
DIMemployee en DWNorthwind, además transforma el nombre del empleado a un
representacion de un solo string,

3. Solución a los siguientes queries tanto en NorthwindDB como en DWNortwind. Para cada
querie se pide estatuto en SQL y screenshot de la solución, si la respuesta es una tabla muy
larga los primeros 5 renglones del resultado es suficiente.
```
Q1.¿Cuál es el producto más vendido en 1996?
Q2¿Cuál es el total de ventas(dinero) en 1996?
Q3¿Cuál es el total de ventas en total (todos los años incluidos en la BD)?
Q4.¿Cuál es la Región) que más vendió en 1997?
Q5 para la región de Q4 cuál es la el estado(si región es USA o país si región es diferente de USA) que más
vendió en 1997
Q6 para pregunta Q5 cuál es la ciudad que más vendió en esa región o país.
Q7¿Cuál es el total de ventas en 1997?
Q8¿Cuál es el total de ventas en total (todos los años)?
Nota: la región, estado y cd que más vende está definido por la información geográfica del empleado.
```

4. Después de integrar DWNorthwind con Tableau (como se muestra en video preparado por
Dra. Lorena Gómez), realiza un video similar respondiendo a las preguntas Q1 a Q8 usando
Tableau. Trata de limitar el video a no más de 6 minutos. (obviamente la liga al video que
realices es lo que debe de aparecer en el documento, no insertes el video en el documento)

5. Un párrafo indicando la experiencia que tuvieron con la práctica, uso de herramientas,
facilidad, dificultad, etc.
