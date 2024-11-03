
-- CREACION DE LA BASE DE DATOS

CREATE DATABASE "DB_fast_food_Lara_Ledesma"

-- Posicionamiento en la BD ---------

USE DB_fast_food_Lara_Ledesma

----------------------------------------------------------------------------
/*CREACION DE LAS TABLAS SIGUIÓ LAS RELACIONES ESTABLECIDAS EN EL MODELO DE ENTIDAD RELACION
CREADO PARA LUEGO SEGUIR CON CARGA DE DATOS.

*coloque drop abajo de cada consulta para crear la tabla porque iva eliminando 
y creando hasta quedar conforme con el resultado.

*por loque ES MEJOR EJECUTAR TABLA POR TABLA LAS CONSULTAS 
si va eliminar tablas y cargar DE NUEVO conviene eliminarlas desde abajo para arriba
porque estableci las relaciones en las consultas de creacion de cada tabla*/
----------------------------------------------------------------------------

CREATE TABLE Categorias (
CategoriasID INT IDENTITY(1,1) PRIMARY KEY,
Nombre varchar(225) not null 
);

DROP TABLE Categorias --**

--------------------------------------
CREATE TABLE Productos (
ProductosID INT IDENTITY (1,1) PRIMARY KEY,
Nombre Varchar (225) not null,
CategoriasID INT not null,
Precio FLOAT not null,
FOREIGN KEY (CategoriasID) REFERENCES Categorias(CategoriasID)
);

DROP TABLE Productos --**

---------------------------------------

CREATE TABLE Sucursales (
SucursalesID INT IDENTITY (1,1) PRIMARY KEY,
Nombre varchar (225) not null,
Direccion varchar (225) not null
);

Drop table  Sucursales --**

---------------------------------------

CREATE TABLE Empleados (
EmpleadosID INT IDENTITY(1,1) PRIMARY KEY,
Nombre varchar(225) not null,
Posicion varchar (225) not null,
Departamento varchar(225) not null,
SucursalesID int not null,
Rol varchar (225) not null
FOREIGN KEY (SucursalesID) REFERENCES Sucursales(SucursalesID)
);

Drop table Empleados --**

---------------------------------

CREATE TABLE Clientes(
ClientesID INT IDENTITY(1,1) PRIMARY KEY,
Nombre varchar (225) not null,
Direccion varchar (225) not null
);

drop table Clientes --**


---------------------------------

CREATE TABLE OrigenesOrden (
OrigenesOrdenID INT IDENTITY(1,1) PRIMARY KEY,
Descripcion varchar (225) not null
);

Drop table OrigenesOrden --**

-----------------------------

CREATE TABLE TiposPago (
TiposPagoID INT IDENTITY(1,1) PRIMARY KEY,
Descripcion varchar (225) not null
);

drop table TiposPago --**

--------------------------

CREATE TABLE Mensajeros (
MensajerosID INT IDENTITY(1,1) PRIMARY KEY,
Nombre varchar (225) not null,
EsExterno bit not null
);

drop table Mensajeros --**
 
-------------------

CREATE TABLE Ordenes (
OrdenesID INT PRIMARY KEY IDENTITY(1,1),

ClientesID INT,
EmpleadosID INT,
SucursalesID INT,
MensajerosID INT,
TiposPagoID INT,
OrigenesOrdenID INT,

HorarioVenta VARCHAR(50),
TotalCompra FLOAT,
KilometrosRecorrer FLOAT,
FechaDespacho DATETIMEOFFSET,
FechaEntrega DATETIMEOFFSET,
FechaOrdenTomada DATETIMEOFFSET,
FechaOrdenLista DATETIMEOFFSET,

FOREIGN KEY (ClientesID) REFERENCES Clientes(ClientesID),
FOREIGN KEY (EmpleadosID) REFERENCES Empleados(EmpleadosID),
FOREIGN KEY (SucursalesID) REFERENCES Sucursales(SucursalesID),
FOREIGN KEY (MensajerosID) REFERENCES Mensajeros(MensajerosID),
FOREIGN KEY (TiposPagoID) REFERENCES TiposPago(TiposPagoID),
FOREIGN KEY (OrigenesOrdenID) REFERENCES OrigenesOrden(OrigenesOrdenID)
);
  

Drop table  Ordenes --**

-----------------------------------------------------

CREATE TABLE DetalleOrdenes (
OrdenesID INT NOT NULL,
ProductosID INT NOT NULL,
Cantidad INT NOT NULL,
Precio FLOAT NOT NULL,
PRIMARY KEY (OrdenesID, ProductosID),--**
FOREIGN KEY (OrdenesID) REFERENCES Ordenes(OrdenesID),
FOREIGN KEY (ProductosID) REFERENCES Productos(ProductosID)
);

drop table DetalleOrdenes --**
---------------------------




