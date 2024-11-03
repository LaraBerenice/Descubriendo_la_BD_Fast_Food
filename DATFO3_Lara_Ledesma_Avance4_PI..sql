USE [DB_fast_food_Lara_Ledesma]

--1-�C�mo puedo obtener una lista de todos los productos junto con sus categor�as?
--use left porque me pide una lista de todos los productos y el left me incluye todos.

select 
	p.Nombre as NombreProducto,
	c.Nombre as Categoria
from Productos p
inner join Categorias c on p.CategoriasID = c.CategoriasID


--2- �C�mo puedo saber a qu� sucursal est� asignado cada empleado?

select
		s.Nombre as NombreSucursal,
		e.Nombre as NombreEmpleado
from Sucursales s
inner join Empleados e on e.SucursalesID = s.SucursalesID

--3-�Existen productos que no tienen una categor�a asignada?

/*con la siguiente consulta de right join se puede observar claramente
que hay productos que no tienen una categoria asignada*/

select 
	p.Nombre as NombreProducto,
	c.Nombre as Categoria
from Productos p
Right join Categorias c on p.CategoriasID = c.CategoriasID

/*luego con el left join hago una consulta especifica para identificar a los 
productos y lo que ocurre es que hay categorias que no tienen productos*/

select 
	p.Nombre as NombreProducto,
	c.Nombre as Categoria
from Productos p
Left join Categorias c on p.CategoriasID = c.CategoriasID
where p.CategoriasID is null


/*--4--�C�mo puedo obtener un detalle completo de las �rdenes, incluyendo el Nombre del cliente,
	Nombre del empleado que tom� la orden, y Nombre del mensajero que la entreg�?*/

/*halle dos maneras de hacerlo pero a mi me pareci� mas practica la primera, entiendo que la segunda optimiza mas
el rendimiento de la consulta*/

select 
	o.OrdenesID as NumeroDeOrden,
	cli.Nombre as NombreCliente,
	e.Nombre as NombreEmpleadoTomoOrden,
	m.Nombre as NombreMensajeroEntregoOrden,
	p.Nombre as NombreProducto,
	ca.Nombre as Categoria,
	do.Cantidad as Cantidad
from Ordenes o, Clientes cli, Mensajeros m, DetalleOrdenes do, Productos p, Categorias ca, Empleados e 

select 
	o.OrdenesID as NumeroDeOrden,
	cli.Nombre as NombreCliente,
	e.Nombre as NombreEmpleadoTomoOrden,
	m.Nombre as NombreMensajeroEntregoOrden,
	p.Nombre as NombreProducto,
	ca.Nombre as Categoria,
	do.Cantidad as Cantidad
from Ordenes o
	inner join Clientes cli on cli.ClientesID = o.ClientesID
	inner join Mensajeros m on m.MensajerosID = o.MensajerosID
	inner join DetalleOrdenes do on  do.OrdenesID = o.OrdenesID
	inner join Productos p on p.ProductosID = do.ProductosID
	inner join Categorias ca on ca.CategoriasID = p.CategoriasID
	inner join Empleados e on e.EmpleadosID = o.EmpleadosID

--5-- �Cu�ntos art�culos correspondientes a cada Categor�a de Productos se han vendido en cada sucursal?

select 
	s.Nombre as NombreSucursal,
	sum(do.Cantidad) as CantidadProdutos
		from Ordenes o
			inner join DetalleOrdenes do on do.OrdenesID=o.OrdenesID
			inner join Productos p on p.ProductosID= do.ProductosID
			inner join Categorias ca on ca.CategoriasID=p.CategoriasID
			inner join Sucursales s on s.SucursalesID=o.SucursalesID
	group by s.Nombre
	order by CantidadProdutos desc

-------------------------------------CONSULTAS FINALES EN LA DOCUMENTACION-------------------------------

--1--
/*Eficiencia de los mensajeros: 
-- Cu�l es el tiempo promedio desde el despacho hasta la entrega de los pedidos por los mensajeros?*/

-- aqui hice un calculo de tiempo por mensajero.

select 
	m.MensajerosID,
	m.Nombre,
	(select avg (datediff(minute,o.FechaDespacho,o.FechaEntrega))
	from dbo.Ordenes o) as PromedioMinutosDespacho_Entreg
from dbo.Mensajeros m 


--2--
/*Eficiencia de los mensajeros: 

�Cu�l es el tiempo promedio desde el despacho hasta
la entrega de los pedidos gestionados por todo el equipo de mensajer�a?*/

--aqui agrupe el total de mensajeros y saque el promedio de Tiempo entre despacho y entrega los Mensajeros.

Select
	count(o.MensajerosID) as TotalMensajeros,
	AVG(PromedioMinutosDespacho_Entreg) as PromediominutDespEntregTodoEquipo
from ordenes o,
(select 
	m.MensajerosID,
	m.Nombre,
	(select 
	avg (datediff(minute,o.FechaDespacho,o.FechaEntrega))
	from dbo.Ordenes o) as PromedioMinutosDespacho_Entreg
	from dbo.Mensajeros m 
	) as subConsultaTabla


--3--
/*An�lisis de Ventas por Origen de Orden:

�Qu� canal de ventas genera m�s ingresos?*/

--El canal de ventas que genera mas ingresos en drive thru con $4255

select top 1
	x.Descripcion as CanalVenta,
	sum (o.TotalCompra) as IngresosGenerados

from OrigenesOrden x
inner join Ordenes o on o.OrigenesOrdenID = x.OrigenesOrdenID
group by  x.Descripcion
order by IngresosGenerados desc


--4--
/*Productividad de los Empleados:

�Cu�l es el nivel de ingreso generado por Empleado?*/

/*aqui se puede ver una lista del ingreso que generan los empleados en orden desendente,
etna Matinez es la que mas ingresos esta generando y Sophia Rodriguez es la que menos
ingresos esta generando actualmente*/

select
    e.Nombre,
    sum(TotalCompra) as TotalIngresos
from Ordenes o
inner join Empleados e on e.EmpleadosID = o.EmpleadosID
group by e.EmpleadosID, e.Nombre
order by SUM(TotalCompra) DESC;


--5--
/*An�lisis de Demanda por Horario y D�a:

�C�mo var�a la demanda de productos a lo largo del d�a? 
NOTA: Esta consulta no puede ser implementada sin una definici�n clara del horario (ma�ana, tarde, noche) en la base de datos existente.
Asumiremos que HorarioVenta refleja esta informaci�n correctamente.*/

-------PRIMERO CALCULE LA VARIACION DE LA DEMANDA -------
Select
	o.HorarioVenta,
	convert(date, o.FechaOrdenTomada) as Fecha,
	substring(convert(varchar(10), o.FechaOrdenTomada, 108), 1, 5) as Hora,
	o.TotalCompra AS Demanda,
	o.TotalCompra - LAG(o.TotalCompra, 1, 0) over (order by o.FechaOrdenTomada) as VariacionDemanda
From dbo.Ordenes o
order by FechaOrdenTomada


--LUEGO SAQUE UN PROMEDIO DE LA VARIACION DE LA DEMANDA--------

select
    round(avg(VariacionDemanda),2) AS PromedioDeVariacionDemanda
from (
    select
        o.HorarioVenta,
        convert(date, o.FechaOrdenTomada) as Fecha,
        substring(convert(varchar(10), o.FechaOrdenTomada, 108), 1, 5) as Hora,
        o.TotalCompra AS Demanda,
        o.TotalCompra - lag(o.TotalCompra, 1) over (order by o.FechaOrdenTomada) as VariacionDemanda
    from dbo.Ordenes o
) as subConsultaTabla


--RTA:en promedio la variacion es de 6,1

--6--
/*Comparaci�n de Ventas Mensuales:

�Cu�l es la tendencia de los ingresos generados en cada periodo mensual?*/


select
  year(FechaOrdenTomada) AS A�o,
  month(FechaOrdenTomada) AS Mes,
  sum(TotalCompra) AS IngresosMensuales
from Ordenes o
group by year(FechaOrdenTomada), month(FechaOrdenTomada)

-- para saber la tendencia saque un promedio de Compras por a�o
SELECT
  year(FechaOrdenTomada) AS A�o,
  AVG(TotalCompra) AS IngresosPromedioMensuales
from Ordenes o
group by year(FechaOrdenTomada)


--7--
/*An�lisis de Fidelidad del Cliente: 

�Qu� porcentaje de clientes son recurrentes versus nuevos clientes cada mes? 
NOTA: La consulta se enfocar�a en la frecuencia de �rdenes por cliente para inferir la fidelidad.*/

select
	year(FechaOrdenTomada) AS A�o,
	month(FechaOrdenTomada) AS Mes,
	cli.Nombre as NombreCliente,
	count(cli.Nombre) as CantidadCompras	
from Ordenes o
inner join Clientes cli on cli.ClientesID = o.ClientesID
group by cli.Nombre, month(FechaOrdenTomada), year(FechaOrdenTomada) 
order by Mes

---------------------------------------------FIN--------------------------------------------------------------------
