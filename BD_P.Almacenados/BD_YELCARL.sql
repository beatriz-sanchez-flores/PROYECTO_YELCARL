create database YELCARL
use YELCARL;

create table Cliente(
Id_cliente int primary key,
Primer_nombre varchar(15),
Segundo_nombre varchar(15),
Primer_apellido varchar(15),
Segundo_apellido varchar(15),
Cedula varchar(25)
)

create table Producto(
Id_producto int primary key,
Id_laboratorio int,
Codigo_producto int,
Nombre_producto varchar(20),
Descripcion_producto varchar(50),
Categoria varchar(20),
Cantidad int,
Cantidad_minima int,
Fecha_vencimiento date,
Presentacion_producto varchar(50)
)

create table Factura(
Id_factura int primary key,
Id_cliente int references Cliente (id_cliente),
Codigo_factura int,
Hora_venta time,
Fecha_venta date,

)

create table Detalle_factura(
Id_detalle_factura int primary key,
Id_factura int references Factura (id_factura),
Nombre_producto varchar(30),
Precio_producto int,
Cantidad int,
Estado_producto varchar(10),
Descuento int,
Total int

)

create table Compras(
Id_compra int primary key,
Id_proveedor int,
N_factura varchar(500),
Fecha date
)

create table Detalle_compra(
Id_detalle_compra varchar(25) primary key,
Id_compra int references Compras (id_compra),
Cantidad int,
Precio_compra int,
Id_detalle_venta int
)

create table Laboratorio(
Id_laboratorio int primary key,
Nombre varchar(30),
Descripcion_laboratorio varchar(50)
)

create table Proveedor(
Id_proveedor int primary key,
Id_compra int references Compras (id_compra),
Descripcion_proveedor varchar(100),
Direccion varchar(50),
Telefono int,
Representante varchar(15)
)

create table Inventario(
Id_producto int references Producto (id_producto),
Id_compra int references Compras (id_compra),
Nombre varchar(45),
Descripcion varchar(45),
Cantidad int,
Fecha_ingreso date,
Fecha_egreso date,
Existencia_minima_producto varchar(50),
Total_ganancia int
)




