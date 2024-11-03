
use DB_fast_food_Lara_Ledesma

---CARGA DE LOS DATOS A LAS TABLAS-------
------------------------------------------------------------------------

-- Insertar datos en Categorias 

INSERT INTO Categorias (Nombre) VALUES

('Comida Rapida'), ('Postres'), ('Bebidas'), ('Ensaladas'), ('Desayunos'),
('Cafetería'), ('Helados'), ('Comida Vegana'), ('Carnes'), ('Pizzas'),
('Comida Rápida'), ('Postres'), ('Bebidas'), ('Ensaladas'), ('Desayunos'),
('Cafetería'), ('Helados'), ('Comida Vegana'), ('Carnes'), ('Pizzas'),
('Comida Rápida'), ('Postres'), ('Bebidas'), ('Ensaladas'), ('Desayunos'),
('Cafetería'), ('Helados'), ('Comida Vegana'), ('Carnes'), ('Pizzas'),
('Sushi'), ('Hamburguesas Gourmet'), ('Comidas del Mundo'),
('Menús Infantiles'), ('Platos a la Parrilla'), ('Tapas y Pinchos');

Select * from Categorias

------------------------------------------------------------------------

-- Insertar datos en Productos 

INSERT INTO Productos (Nombre, CategoriasID, Precio) VALUES
('Hamburguesa Deluxe', 1, 9.99), ('Cheeseburger', 1, 7.99), ('Pizza Margarita', 10, 11.99), ('Pizza Pepperoni', 10, 12.99), ('Helado de Chocolate', 7, 2.99),
('Helado de Vainilla', 7, 2.99), ('Ensalada César', 4, 5.99), ('Ensalada Griega', 4, 6.99), ('Pastel de Zanahoria', 2, 3.99), ('Brownie', 2, 2.99),
('Hamburguesa Deluxe', 1, 9.99), ('Cheeseburger', 1, 7.99), ('Pizza Margarita', 10, 11.99), ('Pizza Pepperoni', 10, 12.99), ('Helado de Chocolate', 7, 2.99),
('Helado de Vainilla', 7, 2.99), ('Ensalada César', 4, 5.99), ('Ensalada Griega', 4, 6.99), ('Pastel de Zanahoria', 2, 3.99), ('Brownie', 2, 2.99),
('Hamburguesa Deluxe', 1, 9.99), ('Cheeseburger', 1, 7.99), ('Pizza Margarita', 10, 11.99), ('Pizza Pepperoni', 10, 12.99), ('Helado de Chocolate', 7, 2.99),
('Helado de Vainilla', 7, 2.99), ('Ensalada César', 4, 5.99), ('Ensalada Griega', 4, 6.99), ('Pastel de Zanahoria', 2, 3.99), ('Brownie', 2, 2.99),
('Café Americano', 3, 3.50), ('Té Helado', 3, 2.99), ('Agua Mineral', 3, 1.50),
('Pizza Cuatro Quesos', 10, 13.99);

Select * from Productos

-----------------------------------------------------------------------


-- Insertar datos en Sucursales 

INSERT INTO Sucursales (Nombre, Direccion) VALUES

('Sucursal Central', '1234 Main St'), ('Sucursal Norte', '5678 North St'), ('Sucursal Este', '9101 East St'), ('Sucursal Oeste', '1121 West St'), ('Sucursal Sur', '3141 South St'),
('Sucursal Playa', '1516 Beach St'), ('Sucursal Montaña', '1718 Mountain St'), ('Sucursal Valle', '1920 Valley St'), ('Sucursal Lago', '2122 Lake St'), ('Sucursal Bosque', '2324 Forest St'),
('Sucursal Central', '1234 Main St'), ('Sucursal Norte', '5678 North St'), ('Sucursal Este', '9101 East St'), ('Sucursal Oeste', '1121 West St'), ('Sucursal Sur', '3141 South St'),
('Sucursal Playa', '1516 Beach St'), ('Sucursal Montaña', '1718 Mountain St'), ('Sucursal Valle', '1920 Valley St'), ('Sucursal Lago', '2122 Lake St'), ('Sucursal Bosque', '2324 Forest St'),
('Sucursal Central', '1234 Main St'), ('Sucursal Norte', '5678 North St'), ('Sucursal Este', '9101 East St'), ('Sucursal Oeste', '1121 West St'), ('Sucursal Sur', '3141 South St'),
('Sucursal Playa', '1516 Beach St'), ('Sucursal Montaña', '1718 Mountain St'), ('Sucursal Valle', '1920 Valley St'), ('Sucursal Lago', '2122 Lake St'), ('Sucursal Bosque', '2324 Forest St'),
('Sucursal Centro Comercial', '1000 Main St, Local A1'), ('Sucursal Aeropuerto', '5000 Airport Drive'), ('Sucursal Estadio', '750 Stadium Lane'),
('Sucursal Puerto', '123 Puerto St');

Select * from Sucursales

----------------------------------------------------------------------

-- Insertar datos en Empleados -- CARGADA --

INSERT INTO Empleados (Nombre, Posicion, Departamento, SucursalesID, Rol) VALUES
('John Doe', 'Gerente', 'Administración', 1, 'Vendedor'), ('Jane Smith', 'Subgerente', 'Ventas', 1, 'Vendedor'), ('Bill Jones', 'Cajero', 'Ventas', 1, 'Vendedor'), ('Alice Johnson', 'Cocinero', 'Cocina', 1, 'Vendedor'), ('Tom Brown', 'Barista', 'Cafetería', 1, 'Vendedor'),
('Emma Davis', 'Repartidor', 'Logística', 1, 'Mensajero'), ('Lucas Miller', 'Atención al Cliente', 'Servicio', 1, 'Vendedor'), ('Olivia García', 'Encargado de Turno', 'Administración', 1, 'Vendedor'), ('Ethan Martinez', 'Mesero', 'Restaurante', 1, 'Vendedor'), ('Sophia Rodriguez', 'Auxiliar de Limpieza', 'Mantenimiento', 1, 'Vendedor'),
('John Doe', 'Gerente', 'Administración', 1, 'Vendedor'), ('Jane Smith', 'Subgerente', 'Ventas', 1, 'Vendedor'), ('Bill Jones', 'Cajero', 'Ventas', 1, 'Vendedor'), ('Alice Johnson', 'Cocinero', 'Cocina', 1, 'Vendedor'), ('Tom Brown', 'Barista', 'Cafetería', 1, 'Vendedor'),
('Emma Davis', 'Repartidor', 'Logística', 1, 'Mensajero'), ('Lucas Miller', 'Atención al Cliente', 'Servicio', 1, 'Vendedor'), ('Olivia García', 'Encargado de Turno', 'Administración', 1, 'Vendedor'), ('Ethan Martinez', 'Mesero', 'Restaurante', 1, 'Vendedor'), ('Sophia Rodriguez', 'Auxiliar de Limpieza', 'Mantenimiento', 1, 'Vendedor'),
('Kevin Johnson', 'Gerente de Marketing', 'Marketing', 3, 'Gerente'),
('Jennifer Lopez', 'Desarrolladora Web', 'Tecnología', 2, 'Técnico'),
('David Williams', 'Contador', 'Finanzas', 1, 'Contador'),
('Maria Jones', 'Asistente Administrativa', 'Administración', 1, 'Secretaria');


Select * from Empleados

----------------------------------------------------------------------

-- Insertar datos en Clientes --- Aqui me quede insertando datos

INSERT INTO Clientes (Nombre, Direccion) VALUES
('Cliente Uno', '1000 A Street'), ('Cliente Dos', '1001 B Street'), ('Cliente Tres', '1002 C Street'), ('Cliente Cuatro', '1003 D Street'), ('Cliente Cinco', '1004 E Street'),
('Cliente Seis', '1005 F Street'), ('Cliente Siete', '1006 G Street'), ('Cliente Ocho', '1007 H Street'), ('Cliente Nueve', '1008 I Street'), ('Cliente Diez', '1009 J Street'),
('Cliente Uno', '1000 A Street'), ('Cliente Dos', '1001 B Street'), ('Cliente Tres', '1002 C Street'), ('Cliente Cuatro', '1003 D Street'), ('Cliente Cinco', '1004 E Street'),
('Cliente Seis', '1005 F Street'), ('Cliente Siete', '1006 G Street'), ('Cliente Ocho', '1007 H Street'), ('Cliente Nueve', '1008 I Street'), ('Cliente Diez', '1009 J Street'),
('Cliente Once', '1010 K Street'),('Cliente Doce', '1011 L Street'),('Cliente Trece', '1012 M Street'),('Cliente Catorce', '1013 N Street');

Select * from Clientes 

---------------------------------------------------------------------

-- Insertar datos en OrigenesOrden

INSERT INTO OrigenesOrden (Descripcion) VALUES
('En línea'), ('Presencial'), ('Teléfono'), ('Drive Thru'), ('App Móvil'),
('Redes Sociales'), ('Correo Electrónico'), ('Publicidad'), ('Recomendación'), ('Evento'),
('En línea'), ('Presencial'), ('Teléfono'), ('Drive Thru'), ('App Móvil'),
('Redes Sociales'), ('Correo Electrónico'), ('Publicidad'), ('Recomendación'), ('Evento'),
('Relaciones Públicas'), ('Telemarketing'), ('Marketing de Influencers'), ('Programa de Fidelización');


Select * from OrigenesOrden

----------------------------------------------------------------------

-- Insertar datos en TiposPago
INSERT INTO TiposPago (Descripcion) VALUES
('Efectivo'), ('Tarjeta de Crédito'), ('Tarjeta de Débito'), ('PayPal'), ('Transferencia Bancaria'),
('Criptomonedas'), ('Cheque'), ('Vale de Comida'), ('Cupón de Descuento'), ('Pago Móvil'),
('Efectivo'), ('Tarjeta de Crédito'), ('Tarjeta de Débito'), ('PayPal'), ('Transferencia Bancaria'),
('Criptomonedas'), ('Cheque'), ('Vale de Comida'), ('Cupón de Descuento'), ('Pago Móvil'),
('Apple Pay'),('Google Pay'),('Samsung Pay'),('Transferencia Bancaria Internacional'),('Giro Postal');

Select * from TiposPago

----------------------------------------------------------------------

-- Insertar datos en Mensajeros
INSERT INTO Mensajeros (Nombre, EsExterno) VALUES
('Mensajero Uno', 0), ('Mensajero Dos', 1), ('Mensajero Tres', 0), ('Mensajero Cuatro', 1), ('Mensajero Cinco', 0),
('Mensajero Seis', 1), ('Mensajero Siete', 0), ('Mensajero Ocho', 1), ('Mensajero Nueve', 0), ('Mensajero Diez', 1),
('Mensajero Uno', 0), ('Mensajero Dos', 1), ('Mensajero Tres', 0), ('Mensajero Cuatro', 1), ('Mensajero Cinco', 0),
('Mensajero Seis', 1), ('Mensajero Siete', 0), ('Mensajero Ocho', 1), ('Mensajero Nueve', 0), ('Mensajero Diez', 1),
('Mensajero Once', 0),('Mensajero Doce', 1),('Mensajero Trece', 0),('Mensajero Catorce', 1),('Mensajero Quince', 0),
('Mensajero Dieciséis', 1),('Mensajero Diecisiete', 0),('Mensajero Dieciocho', 1),('Mensajero Diecinueve', 0),
('Mensajero Veinte', 1);

Select * from Mensajeros

---------------------------------------------------------------------

-- Insertar datos en Ordenes
INSERT INTO Ordenes (ClientesID, EmpleadosID, SucursalesID, MensajerosID, TiposPagoID, OrigenesOrdenID, HorarioVenta, TotalCompra, KilometrosRecorrer, FechaDespacho, FechaEntrega, FechaOrdenTomada, FechaOrdenLista) VALUES
(1, 1, 1, 1, 1, 1, 'Mañana', 1053.51, 5.5, '2023-01-10T08:30:00.000-03:00', '2023-01-10T09:00:00.000-03:00', '2023-01-10T08:00:00.000-03:00', '2023-01-10T08:15:00.000-03:00'),
(2, 2, 2, 2, 2, 2, 'Tarde', 1075.00, 10.0, '2023-02-15T14:30:00.000-03:00', '2023-02-15T15:00:00.000-03:00', '2023-02-15T13:30:00.000-03:00', '2023-02-15T14:00:00.000-03:00'),
(3, 3, 3, 3, 3, 3, 'Noche', 920.00, 2.0, '2023-03-20T19:30:00.000-03:00', '2023-03-20T20:00:00.000-03:00', '2023-03-20T19:00:00.000-03:00', '2023-03-20T19:15:00.000-03:00'),
(4, 4, 4, 4, 4, 4, 'Mañana', 930.00, 0.5, '2023-04-25T09:30:00.000-03:00', '2023-04-25T10:00:00.000-03:00', '2023-04-25T09:00:00.000-03:00', '2023-04-25T09:15:00.000-03:00'),
(5, 5, 5, 5, 5, 5, 'Tarde', 955.00, 8.0, '2023-05-30T15:30:00.000-03:00', '2023-05-30T16:00:00.000-03:00', '2023-05-30T15:00:00.000-03:00', '2023-05-30T15:15:00.000-03:00'),
(6, 6, 6, 6, 6, 1, 'Noche', 945.00, 12.5, '2023-06-05T20:30:00.000-03:00', '2023-06-05T21:00:00.000-03:00', '2023-06-05T20:00:00.000-03:00', '2023-06-05T20:15:00.000-03:00'),
(7, 7, 7, 7, 7, 2, 'Mañana', 1065.00, 7.5, '2023-07-10T08:30:00.000-03:00', '2023-07-10T09:00:00.000-03:00', '2023-07-10T08:00:00.000-03:00', '2023-07-10T08:15:00.000-03:00'),
(8, 8, 8, 8, 8, 3, 'Tarde', 1085.00, 9.5, '2023-08-15T14:30:00.000-03:00', '2023-08-15T15:00:00.000-03:00', '2023-08-15T14:00:00.000-03:00', '2023-08-15T14:15:00.000-03:00'),
(9, 9, 9, 9, 9, 4, 'Noche', 1095.00, 3.0, '2023-09-20T19:30:00.000-03:00', '2023-09-20T20:00:00.000-03:00', '2023-09-20T19:00:00.000-03:00', '2023-09-20T19:15:00.000-03:00'),
(10, 10, 10, 10, 10, 5, 'Mañana', 900.00, 15.0, '2023-10-25T09:30:00.000-03:00', '2023-10-25T10:00:00.000-03:00', '2023-10-25T09:00:00.000-03:00', '2023-10-25T09:15:00.000-03:00'),
(11,9, 9, 9, 9, 4, 'Noche', 1095.00, 3.0, '2023-09-20T19:30:00.000-03:00', '2023-09-20T20:00:00.000-03:00', '2023-09-20T19:00:00.000-03:00', '2023-09-20T19:15:00.000-03:00'),
(12, 10, 10, 10, 10, 5, 'Mañana', 900.00, 15.0, '2023-10-25T09:30:00.000-03:00', '2023-10-25T10:00:00.000-03:00', '2023-10-25T09:00:00.000-03:00', '2023-10-25T09:15:00.000-03:00'),
(11, 11, 11, 11, 11, 11, 'Noche', 1105.00, 4.0, '2023-11-30T19:30:00.000-03:00', '2023-11-30T20:00:00.000-03:00', '2023-11-30T19:00:00.000-03:00', '2023-11-30T19:15:00.000-03:00'),
(12, 12, 12, 12, 12, 12, 'Mañana', 1115.00, 16.0, '2023-12-25T09:30:00.000-03:00', '2023-12-25T10:00:00.000-03:00', '2023-12-25T09:00:00.000-03:00', '2023-12-25T09:15:00.000-03:00'),
(13, 13, 13, 13, 13, 13, 'Tarde', 1125.00, 9.0, '2024-01-15T14:30:00.000-03:00', '2024-01-15T15:00:00.000-03:00', '2024-01-15T14:00:00.000-03:00', '2024-01-15T14:15:00.000-03:00'),
(14, 14, 14, 14, 14, 14, 'Noche', 1135.00, 5.5, '2024-02-20T19:30:00.000-03:00', '2024-02-20T20:00:00.000-03:00', '2024-02-20T19:00:00.000-03:00', '2024-02-20T19:15:00.000-03:00'),
(15, 15, 15, 15, 15, 15, 'Mañana', 1145.00, 18.0, '2024-03-25T09:30:00.000-03:00', '2024-03-25T10:00:00.000-03:00', '2024-03-25T09:00:00.000-03:00', '2024-03-25T09:15:00.000-03:00');

Select * from Ordenes

-------------------------------------------------------------------------

-- Insertar datos en DetalleOrdenes
INSERT INTO DetalleOrdenes (OrdenesID, ProductosID, Cantidad, Precio) VALUES
(1, 1, 3, 23.44),
(1, 2, 5, 45.14),
(1, 3, 4, 46.37),
(1, 4, 4, 42.34),
(1, 5, 1, 18.25),
(1, 6, 4, 20.08),
(1, 7, 2, 13.31),
(1, 8, 2, 20.96),
(1, 9, 4, 30.13),
(1, 10, 3, 38.34),
(2,1,3, 23.44),
(3, 2, 5, 45.14),
(4,3,4, 46.37),
(5,4, 4, 42.34),
(6,5, 1, 18.25),
(7,6, 4, 20.08),
(8,7,2, 13.31),
(9, 2,32,96),
(10,2,4,30.13),
(11,10, 3, 38.34),
(12, 1, 2, 23.44),
(12, 3, 1, 45.14),
(12, 5, 3, 46.37),
(12, 6, 2, 42.34),
(12, 7, 4, 18.25),
(12, 8, 1, 20.08),
(12, 9, 3, 13.31),
(12, 10, 5, 20.96),
(13, 2, 4, 30.13),
(13, 4, 2, 38.34),
(14, 1, 5, 23.44),
(14, 3, 3, 45.14),
(14, 5, 1, 46.37),
(14, 7, 2, 42.34),
(14, 8, 4, 18.25),
(14, 9, 1, 20.08),
(14, 10, 3, 13.31),
(15, 2, 5, 20.96),
(15, 4, 2, 30.13),
(15, 10, 4, 38.34);


Select * from DetalleOrdenes

--------------------------------------------------------------------------
--UPDATE Y DELETE

--ACTUALIZACIONES DE EJEMPLO (UPDATE)

-- Aumentar el precio de todos los productos en la categoría 1
UPDATE Productos SET Precio = Precio + 1 WHERE CategoriasID= 1;  -- EJECUTADO**

-- Cambiar la posición de todos los empleados del departamento 'Cocina' a 'Chef'
UPDATE Empleados SET Posicion = 'Chef' WHERE Departamento = 'Cocina';

-- Actualizar la dirección de una sucursal específica
UPDATE Sucursales SET Direccion = '1234 New Address St' WHERE SucursalesID = 1;

--ELIMINACIONES DE EJEMPLO (DELETE)

/*1. Eliminar una orden específica
Imaginemos que quieres eliminar una orden específica, 
por ejemplo, la orden con OrdenID = 10. 
Esta operación eliminaría la orden junto con sus detalles asociados 
(deberías asegurarte de eliminar o actualizar cualquier dato relacionado 
para mantener la integridad referencial).*/

DELETE FROM DetalleOrdenes WHERE OrdenesID = 10;
DELETE FROM Ordenes WHERE OrdenesID = 10;

/*2. Eliminar todos los productos de una categoría específica
Si decides dejar de ofrecer todos los "Postres" 
(supongamos que Categorias.CategoriaID = 2 para "Postres"), 
podrías querer eliminar todos los productos asociados a esa categoría.*/

DELETE FROM Productos WHERE CategoriasID =2;--NO PUDE EJECUTAR EJECUTE EL DE ABAJO--

DELETE FROM DetalleOrdenes
WHERE ProductosID IN (SELECT ProductosID FROM Productos WHERE CategoriasID = 2);

--Antes de ejecutar este comando, deberías considerar si hay órdenes que incluyen estos productos y decidir cómo manejar esas referencias.

/*3. Eliminar empleados de una sucursal que cerró
Si una sucursal cierra, por ejemplo, 
SucursalID = 10 (Sucursal Bosque), 
podrías necesitar eliminar a todos los empleados asociados con esa sucursal.*/

DELETE FROM Empleados WHERE SucursalesID = 10;

--------------------------------------------------------------------------------------

--PREGUNTAS ----

--1 ¿Cuál es la cantidad total de registros únicos en la tabla de órdenes?

select count(OrdenesID) AS CantidadRegistrosUnicosEnTablaOrdenes
from Ordenes

--2 ¿Cuántos empleados existen en cada departamento?

select 
	Empleados.Departamento,
	count(Empleados.EmpleadosID) as CantidadEmpleadoXdepartamento
	from Empleados
	group by Empleados.Departamento

	select
		AVG((select 
			Empleados.Departamento,
			count(Empleados.EmpleadosID) as CantidadEmpleadoXdepartamento
		from Empleados
		group by Empleados.Departamento))
	from Empleados
-------------------PROMEDIO EMPLEADOS POR DEPARTAMENTO---------------------------------------------
Select
  AVG(CantidadEmpleadoXdepartamento) as PromedioEmpleadosXdepartamento
from (Select
		Empleados.Departamento,
		COUNT(Empleados.EmpleadosID) AS CantidadEmpleadoXdepartamento
	  FROM Empleados
	  GROUP BY Empleados.Departamento) as subConsultaTabla


--3 ¿Cuántos productos hay por código de categoría(categoria)?

 select 
	Productos.CategoriasID,
	(select Nombre from Categorias where CategoriasID = Productos.CategoriasID) as NombreDeLaCategoria,
	count(Productos.Nombre) as CantidadProductoXcategoria
	from Productos
	group by CategoriasID

----------------------PROMEDIO DE PRODUCTO POR CATEGORIA ----------------------------------------------
Select
  AVG(CantidadProductoXcategoria) as PromedioProductosXcategorias
from ( select 
	Productos.CategoriasID,
	(select Nombre from Categorias where CategoriasID = Productos.CategoriasID) as NombreDeLaCategoria,
		count(Productos.Nombre) as CantidadProductoXcategoria
		from Productos
		group by CategoriasID) as subConsultaTabla
	

--4 ¿Cuántos clientes se han importado a la tabla de clientes

select distinct
	count(Clientes.ClientesID) CantidadTotalDeClientesImportadosAtablaClientes
from Clientes


/*--5 ¿Cuales son las sucursales con un promedio de Facturación/Ingresos superior a 1000.00

	y que minimizan sus costos en base al promedio de kilómetros recorridos de todas de sus 
	entregas gestionadas? 
	
	Para un mejor relevamiento, ordene el listado por el Promedio Km Recorridos.*/


Select top 3
    O.SucursalesID,
    (select Nombre from Sucursales where SucursalesID = O.SucursalesID) as NombreDeSucursal,
    avg(O.TotalCompra) as PromedioTotalCompra,
    avg(O.KilometrosRecorrer) as PromedioKmXrecorrer
from Ordenes O
group by O.SucursalesID
having avg(O.TotalCompra) > 1000.00
order by PromedioKmXrecorrer asc;


--------------------------------------------------------------------------


