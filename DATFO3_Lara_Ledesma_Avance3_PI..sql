
use [DB_fast_food_Lara_Ledesma]

--- PREGUNTAS DEL TERCER AVANCE --------------------------------------------------------------

--1 �Cu�l es el total de ventas (TotalCompra) a nivel global?

select 
	SUM(Ordenes.TotalCompra) AS TotalVentas_ComprasGlobal
from Ordenes

--2 �Cu�l es el precio promedio de los productos dentro de cada categor�a?

select
    Productos.CategoriasID,
    (select Categorias.Nombre from Categorias where CategoriasID = Productos.CategoriasID) as NombreProducto,
    round(avg(Productos.Precio), 2) as PrecioPromedioDeProductosXcategoria
from Productos
group by CategoriasID
order by PrecioPromedioDeProductosXcategoria


--3 �Cu�l es el valor de la orden m�nima y m�xima por cada sucursal?

select Top 1
	s.SucursalesID,
	s.Nombre,
	MAX(o.TotalCompra) as OrdenMax,
	MIN(o.TotalCompra) as OrdenMin
from Ordenes o, Sucursales s
group by s.SucursalesID,s.Nombre
order by OrdenMax, OrdenMin desc


--4 �Cu�l es el mayor n�mero de kil�metros recorridos para una entrega?

select 
	Max(Ordenes.KilometrosRecorrer) as MayorNkilometrosRecorridos
from Ordenes


--5 �Cu�l es la cantidad promedio de productos por orden?

Select
  AVG(CantidadPromedioProductoXorden) as PromedioProductosXcategorias
from (select 
	OrdenesID,
	Avg(Cantidad) AS CantidadPromedioProductoXorden
from DetalleOrdenes
group by OrdenesID) as subConsultaTabla


--6 �C�mo se distribuye la Facturaci�n Total del Negocio de acuerdo a los m�todos de pago?

select 
	tp.Descripcion,
	SUM(o.TotalCompra) FacturacionStipoDePago
from Ordenes o
inner join TiposPago tp on tp.TiposPagoID = o.TiposPagoID
group by tp.Descripcion
order by FacturacionStipoDePago desc


--7  �Cual Sucursal tiene el ingreso promedio m�s alto?

select top 1
    s.Nombre as NombreSucursal,
    round(avg(o.TotalCompra), 2) as IngresoPromedio
FROM Ordenes o
inner join Sucursales s on o.SucursalesID = s.SucursalesID
group by s.Nombre
order by IngresoPromedio desc;


--8 �Cu�les son las sucursales que han generado ventas totales por encima de $ 1000?

SELECT top 3
	SucursalesID,
	(select Sucursales.Nombre from Sucursales where SucursalesID = Ordenes.SucursalesID) as NombreSucursales,
	sum(TotalCompra) as VentasTotales
FROM Ordenes
group by SucursalesID
Having sum(TotalCompra) > 1000
order by VentasTotales desc


--9 �C�mo se comparan las ventas promedio antes y despu�s del 1 de julio de 2023?

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
/* �Durante qu� horario del d�a (ma�ana, tarde, noche) se registra la mayor cantidad de ventas, 
	cu�l es el ingreso promedio de estas ventas,
	y cu�l ha sido el importe m�ximo alcanzado por una orden en dicha jornada?
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