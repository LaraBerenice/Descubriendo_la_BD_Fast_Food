
use [DB_fast_food_Lara_Ledesma]

--- PREGUNTAS DEL TERCER AVANCE --------------------------------------------------------------

--1 ¿Cuál es el total de ventas (TotalCompra) a nivel global?

select 
	SUM(Ordenes.TotalCompra) AS TotalVentas_ComprasGlobal
from Ordenes

--2 ¿Cuál es el precio promedio de los productos dentro de cada categoría?

select
    Productos.CategoriasID,
    (select Categorias.Nombre from Categorias where CategoriasID = Productos.CategoriasID) as NombreProducto,
    round(avg(Productos.Precio), 2) as PrecioPromedioDeProductosXcategoria
from Productos
group by CategoriasID
order by PrecioPromedioDeProductosXcategoria


--3 ¿Cuál es el valor de la orden mínima y máxima por cada sucursal?

select Top 1
	s.SucursalesID,
	s.Nombre,
	MAX(o.TotalCompra) as OrdenMax,
	MIN(o.TotalCompra) as OrdenMin
from Ordenes o, Sucursales s
group by s.SucursalesID,s.Nombre
order by OrdenMax, OrdenMin desc


--4 ¿Cuál es el mayor número de kilómetros recorridos para una entrega?

select 
	Max(Ordenes.KilometrosRecorrer) as MayorNkilometrosRecorridos
from Ordenes


--5 ¿Cuál es la cantidad promedio de productos por orden?

Select
  AVG(CantidadPromedioProductoXorden) as PromedioProductosXcategorias
from (select 
	OrdenesID,
	Avg(Cantidad) AS CantidadPromedioProductoXorden
from DetalleOrdenes
group by OrdenesID) as subConsultaTabla


--6 ¿Cómo se distribuye la Facturación Total del Negocio de acuerdo a los métodos de pago?

select 
	tp.Descripcion,
	SUM(o.TotalCompra) FacturacionStipoDePago
from Ordenes o
inner join TiposPago tp on tp.TiposPagoID = o.TiposPagoID
group by tp.Descripcion
order by FacturacionStipoDePago desc


--7  ¿Cual Sucursal tiene el ingreso promedio más alto?

select top 1
    s.Nombre as NombreSucursal,
    round(avg(o.TotalCompra), 2) as IngresoPromedio
FROM Ordenes o
inner join Sucursales s on o.SucursalesID = s.SucursalesID
group by s.Nombre
order by IngresoPromedio desc;


--8 ¿Cuáles son las sucursales que han generado ventas totales por encima de $ 1000?

SELECT top 3
	SucursalesID,
	(select Sucursales.Nombre from Sucursales where SucursalesID = Ordenes.SucursalesID) as NombreSucursales,
	sum(TotalCompra) as VentasTotales
FROM Ordenes
group by SucursalesID
Having sum(TotalCompra) > 1000
order by VentasTotales desc


--9 ¿Cómo se comparan las ventas promedio antes y después del 1 de julio de 2023?

SELECT 
    CASE 
        WHEN FechaOrdenTomada < '2023-07-01' THEN 'Antes 2023-07-01'
        ELSE 'Despues 2023-07-01'
    END AS Comparacion,

    SUM(TotalCompra) AS TotalCompras

FROM Ordenes

GROUP BY 
    CASE 
        WHEN FechaOrdenTomada < '2023-07-01' THEN 'Antes 2023-07-01'
        ELSE 'Despues 2023-07-01'
    END;


--10 
/* ¿Durante qué horario del día (mañana, tarde, noche) se registra la mayor cantidad de ventas, 
	cuál es el ingreso promedio de estas ventas,
	y cuál ha sido el importe máximo alcanzado por una orden en dicha jornada?
*/

Select top 1
	HorarioVenta,
	count(OrdenesID) AS CantidadVentas,
	Round(AVG(TotalCompra),2) as IngresoPromedioVentas,
	Max(TotalCompra) as MaximoImporteAlcanzado
From Ordenes
group by HorarioVenta 
order by CantidadVentas desc


--------------------------------------------------------------------------------------------------