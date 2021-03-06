USE [master]
GO
/****** Object:  Database [YELCARL]    Script Date: 20/4/2021 12:23:16 p. m. ******/
CREATE DATABASE [YELCARL]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'YELCARL', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS01\MSSQL\DATA\YELCARL.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'YELCARL_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS01\MSSQL\DATA\YELCARL_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [YELCARL] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [YELCARL].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [YELCARL] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [YELCARL] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [YELCARL] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [YELCARL] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [YELCARL] SET ARITHABORT OFF 
GO
ALTER DATABASE [YELCARL] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [YELCARL] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [YELCARL] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [YELCARL] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [YELCARL] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [YELCARL] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [YELCARL] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [YELCARL] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [YELCARL] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [YELCARL] SET  DISABLE_BROKER 
GO
ALTER DATABASE [YELCARL] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [YELCARL] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [YELCARL] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [YELCARL] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [YELCARL] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [YELCARL] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [YELCARL] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [YELCARL] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [YELCARL] SET  MULTI_USER 
GO
ALTER DATABASE [YELCARL] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [YELCARL] SET DB_CHAINING OFF 
GO
ALTER DATABASE [YELCARL] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [YELCARL] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [YELCARL] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [YELCARL] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [YELCARL] SET QUERY_STORE = OFF
GO
USE [YELCARL]
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 20/4/2021 12:23:16 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cliente](
	[Id_cliente] [int] NOT NULL,
	[Primer_nombre] [varchar](15) NULL,
	[Segundo_nombre] [varchar](15) NULL,
	[Primer_apellido] [varchar](15) NULL,
	[Segundo_apellido] [varchar](15) NULL,
	[Cedula] [varchar](25) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_cliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Compras]    Script Date: 20/4/2021 12:23:17 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Compras](
	[Id_compra] [int] NOT NULL,
	[Id_proveedor] [int] NULL,
	[N_factura] [varchar](500) NULL,
	[Fecha] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_compra] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Detalle_compra]    Script Date: 20/4/2021 12:23:17 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Detalle_compra](
	[Id_detalle_compra] [varchar](25) NOT NULL,
	[Id_compra] [int] NULL,
	[Cantidad] [int] NULL,
	[Precio_compra] [int] NULL,
	[Id_detalle_venta] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_detalle_compra] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Detalle_factura]    Script Date: 20/4/2021 12:23:17 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Detalle_factura](
	[Id_detalle_factura] [int] NOT NULL,
	[Id_factura] [int] NULL,
	[Nombre_producto] [varchar](30) NULL,
	[Precio_producto] [int] NULL,
	[Cantidad] [int] NULL,
	[Estado_producto] [varchar](10) NULL,
	[Descuento] [int] NULL,
	[Total] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_detalle_factura] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Factura]    Script Date: 20/4/2021 12:23:17 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Factura](
	[Id_factura] [int] NOT NULL,
	[Id_cliente] [int] NULL,
	[Codigo_factura] [int] NULL,
	[Hora_venta] [time](7) NULL,
	[Fecha_venta] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_factura] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Inventario]    Script Date: 20/4/2021 12:23:17 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Inventario](
	[Id_producto] [int] NULL,
	[Id_compra] [int] NULL,
	[Nombre] [varchar](45) NULL,
	[Descripcion] [varchar](45) NULL,
	[Cantidad] [int] NULL,
	[Fecha_ingreso] [date] NULL,
	[Fecha_egreso] [date] NULL,
	[Existencia_minima_producto] [varchar](50) NULL,
	[Total_ganancia] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Laboratorio]    Script Date: 20/4/2021 12:23:17 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Laboratorio](
	[Id_laboratorio] [int] NOT NULL,
	[Nombre] [varchar](30) NULL,
	[Descripcion_laboratorio] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_laboratorio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Producto]    Script Date: 20/4/2021 12:23:17 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Producto](
	[Id_producto] [int] NOT NULL,
	[Id_laboratorio] [int] NULL,
	[Codigo_producto] [int] NULL,
	[Nombre_producto] [varchar](20) NULL,
	[Descripcion_producto] [varchar](50) NULL,
	[Categoria] [varchar](20) NULL,
	[Cantidad] [int] NULL,
	[Cantidad_minima] [int] NULL,
	[Fecha_vencimiento] [date] NULL,
	[Presentacion_producto] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_producto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Proveedor]    Script Date: 20/4/2021 12:23:17 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Proveedor](
	[Id_proveedor] [int] NOT NULL,
	[Id_compra] [int] NULL,
	[Descripcion_proveedor] [varchar](100) NULL,
	[Direccion] [varchar](50) NULL,
	[Telefono] [int] NULL,
	[Representante] [varchar](15) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_proveedor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Detalle_compra]  WITH CHECK ADD FOREIGN KEY([Id_compra])
REFERENCES [dbo].[Compras] ([Id_compra])
GO
ALTER TABLE [dbo].[Detalle_factura]  WITH CHECK ADD FOREIGN KEY([Id_factura])
REFERENCES [dbo].[Factura] ([Id_factura])
GO
ALTER TABLE [dbo].[Factura]  WITH CHECK ADD FOREIGN KEY([Id_cliente])
REFERENCES [dbo].[Cliente] ([Id_cliente])
GO
ALTER TABLE [dbo].[Inventario]  WITH CHECK ADD FOREIGN KEY([Id_compra])
REFERENCES [dbo].[Compras] ([Id_compra])
GO
ALTER TABLE [dbo].[Inventario]  WITH CHECK ADD FOREIGN KEY([Id_producto])
REFERENCES [dbo].[Producto] ([Id_producto])
GO
ALTER TABLE [dbo].[Proveedor]  WITH CHECK ADD FOREIGN KEY([Id_compra])
REFERENCES [dbo].[Compras] ([Id_compra])
GO
/****** Object:  StoredProcedure [dbo].[agregarCliente]    Script Date: 20/4/2021 12:23:17 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[agregarCliente]
@Id_cliente int, @Primer_nombre varchar(15), @Segundo_nombre varchar(15), @Primer_apellido varchar(15), @Segundo_apellido varchar(15), @Cedula varchar(25)

as
begin

insert into Cliente(Id_cliente, Primer_nombre, Segundo_nombre, Primer_apellido, Segundo_apellido, Cedula)
values (@Id_cliente, @Primer_nombre, @Segundo_nombre, @Primer_apellido, @Segundo_apellido, @Cedula)
end 
GO
/****** Object:  StoredProcedure [dbo].[agregarCompras]    Script Date: 20/4/2021 12:23:17 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[agregarCompras]
@Id_compra int, @Id_proveedor int, @N_factura varchar(500), @Fecha date

as
begin

insert into Compras(Id_compra, Id_proveedor, N_factura, Fecha)
values (@Id_compra, @Id_proveedor, @N_factura, @Fecha)
end 

GO
/****** Object:  StoredProcedure [dbo].[agregarDetalle_compra]    Script Date: 20/4/2021 12:23:17 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[agregarDetalle_compra]
@Id_detalle_compra varchar(25), @Id_compra int, @Cantidad int, @Precio_compra int

as
begin

insert into Detalle_compra(Id_detalle_compra, Id_compra, Cantidad, Precio_compra)
values (@Id_detalle_compra, @Id_compra, @Cantidad, @Precio_compra)
end 

GO
/****** Object:  StoredProcedure [dbo].[agregarDetalle_factura]    Script Date: 20/4/2021 12:23:17 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[agregarDetalle_factura]
@Id_detalle_factura int, @Id_factura int, @Nombre_producto varchar(30), @Precio_producto int, @Cantidad int, @Estado_producto varchar(10), @Descuento int, @Total int

as
begin

insert into Detalle_factura(Id_detalle_factura, Id_factura, Nombre_producto, Precio_producto, Cantidad, Estado_producto, Descuento, Total)
values (@Id_detalle_factura, @Id_factura, @Nombre_producto, @Precio_producto, @Cantidad, @Estado_producto, @Descuento, @Total)
end 
GO
/****** Object:  StoredProcedure [dbo].[agregarFactura]    Script Date: 20/4/2021 12:23:17 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[agregarFactura]
@Id_factura int, @Id_cliente int, @Codigo_factura int, @Hora_venta time, @Fecha_venta date

as
begin

insert into Factura(Id_factura, Id_cliente, Codigo_factura, Hora_venta, Fecha_venta)
values (@Id_factura, @Id_cliente, @Codigo_factura, @Hora_venta, @Fecha_venta)
end 
GO
/****** Object:  StoredProcedure [dbo].[agregarInventario]    Script Date: 20/4/2021 12:23:17 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[agregarInventario]
@Id_producto int, @Id_compra int, @Nombre varchar(45), @Descripcion varchar(45), @Cantidad int, @Fecha_ingreso date, @Fecha_egreso date, @Existencia_minima_producto varchar(30), @Total_ganancia int

as
begin

insert into Inventario(Id_producto, Id_compra, Nombre, Descripcion, Cantidad, Fecha_ingreso, Fecha_egreso , Existencia_minima_producto, Total_ganancia)
values (@Id_producto, @Id_compra, @Nombre, @Descripcion, @Cantidad, @Fecha_ingreso, @Fecha_egreso, @Existencia_minima_producto, @Total_ganancia)
end 
GO
/****** Object:  StoredProcedure [dbo].[agregarLaboratorio]    Script Date: 20/4/2021 12:23:17 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[agregarLaboratorio]
@Id_laboratorio int, @Nombre varchar(30), @Descripcion_laboratorio varchar(50)

as
begin

insert into Laboratorio(Id_laboratorio, Nombre, Descripcion_laboratorio)
values (@Id_laboratorio, @Nombre, @Descripcion_laboratorio)
end 
GO
/****** Object:  StoredProcedure [dbo].[agregarProducto]    Script Date: 20/4/2021 12:23:17 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[agregarProducto]
@Id_producto int, @Id_laboratorio int, @Codigo_producto int, @Nombre_producto varchar(20), @Descripcion_producto varchar(50), @Categoria varchar(20), @Cantidad int, @Cantidad_minima int, @Fecha_vencimiento date, @Presentacion_producto varchar(50)

as
begin

insert into Producto(Id_producto, Id_laboratorio, Codigo_producto, Nombre_producto, Descripcion_producto, Categoria, Cantidad, Cantidad_minima, Fecha_vencimiento, Presentacion_producto)
values (@Id_producto, @Id_laboratorio, @Codigo_producto, @Nombre_producto, @Descripcion_producto, @Categoria, @Cantidad, @Cantidad_minima, @Fecha_vencimiento, @Presentacion_producto)

end
GO
/****** Object:  StoredProcedure [dbo].[agregarProveedor]    Script Date: 20/4/2021 12:23:17 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[agregarProveedor]
@Id_proveedor int, @Id_compra int, @Descripcion_proveedor varchar(100), @Direccion varchar(50), @Telefono int, @Representante varchar(15)

as
begin

insert into Proveedor(Id_proveedor, Id_compra, Descripcion_proveedor, Direccion, Telefono, Representante)
values (@Id_proveedor, @Id_compra, @Descripcion_proveedor, @Direccion, @Telefono, @Representante)
end 
GO
/****** Object:  StoredProcedure [dbo].[editarCompras]    Script Date: 20/4/2021 12:23:17 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[editarCompras]

@Id_cliente int, @Primer_nombre varchar(15), @Segundo_nombre varchar(15), @Primer_apellido varchar(15), @Segundo_apellido varchar(15), @Cedula varchar(25)
as

update Cliente set Id_cliente=@Id_cliente, Primer_nombre=@Primer_nombre, Segundo_nombre=@Segundo_nombre, Primer_apellido=@Segundo_apellido, Cedula=@Cedula
where Id_cliente=Id_cliente
GO
/****** Object:  StoredProcedure [dbo].[editarDetalle_compra]    Script Date: 20/4/2021 12:23:17 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[editarDetalle_compra]

@Id_detalle_compra varchar(25), @Id_compra int, @Cantidad int, @Precio_compra int
as

update Detalle_compra set Id_detalle_compra=@Id_detalle_compra, Id_compra=@Id_compra, Cantidad=@Cantidad, Precio_compra=@Precio_compra
where Id_detalle_compra=Id_detalle_compra
GO
/****** Object:  StoredProcedure [dbo].[editarDetalle_factura]    Script Date: 20/4/2021 12:23:17 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[editarDetalle_factura]

@Id_detalle_factura int, @Id_factura int, @Nombre_producto varchar(30), @Precio_producto int, @Cantidad int, @Estado_producto varchar(10), @Descuento int, @Total int
as

update Detalle_factura set Id_detalle_factura=@Id_detalle_factura, Id_factura=@Id_factura, Nombre_producto=@Nombre_producto, Precio_producto=@Precio_producto, Cantidad=@Cantidad, Estado_producto=@Estado_producto, Descuento=@Descuento, Total=@Total 
where Id_detalle_factura=Id_detalle_factura
GO
/****** Object:  StoredProcedure [dbo].[editarFactura]    Script Date: 20/4/2021 12:23:17 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[editarFactura]

@Id_factura int, @Id_cliente int, @Codigo_factura int, @Hora_venta time, @Fecha_venta date
as

update Factura set Id_factura=@Id_factura, Id_cliente=@Id_cliente, Codigo_factura=@Codigo_factura, Hora_venta=@Hora_venta, Fecha_venta=@Fecha_venta
where Id_factura=Id_factura
GO
/****** Object:  StoredProcedure [dbo].[editarInventario]    Script Date: 20/4/2021 12:23:17 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[editarInventario]

@Id_producto int, @Id_compra int, @Nombre varchar(45), @Descripcion varchar(45), @Cantidad int, @Fecha_ingreso date, @Fecha_egreso date, @Existencia_minima_producto varchar(30), @Total_ganancia int
as

update Inventario set Id_producto=@Id_producto, Id_compra=@Id_compra, Nombre=@Nombre, Descripcion=@Descripcion, Cantidad=@Cantidad, Fecha_ingreso=@Fecha_ingreso, Fecha_egreso=@Fecha_egreso, Existencia_minima_producto=@Existencia_minima_producto, Total_ganancia=@Total_ganancia
where Id_producto=Id_producto
GO
/****** Object:  StoredProcedure [dbo].[editarLaboratorio]    Script Date: 20/4/2021 12:23:17 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[editarLaboratorio]

@Id_laboratorio int, @Nombre varchar(30), @Descripcion_laboratorio varchar(50)
as

update Laboratorio set Id_laboratorio=@Id_laboratorio, Nombre=@Nombre, Descripcion_laboratorio=@Descripcion_laboratorio
where Id_laboratorio=Id_laboratorio
GO
/****** Object:  StoredProcedure [dbo].[editarProducto]    Script Date: 20/4/2021 12:23:17 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[editarProducto]

@Id_producto int, @Id_laboratorio int, @Codigo_producto int, @Nombre_producto varchar(20), @Descripcion_producto varchar(50), @Categoria varchar(20), @Cantidad int, @Cantidad_minima int, @Fecha_vencimiento date, @Presentacion_producto varchar(50)

as

 update Producto set Id_producto=@Id_producto, Id_laboratorio=@Id_laboratorio, Codigo_producto=@Codigo_producto, Nombre_producto=@Nombre_producto, Descripcion_producto=@Descripcion_producto, Categoria=@Categoria, Cantidad=@Cantidad, Cantidad_minima=@Cantidad_minima, Fecha_vencimiento=@Fecha_vencimiento, Presentacion_producto=@Presentacion_producto
 where Id_producto=@Id_producto
GO
/****** Object:  StoredProcedure [dbo].[editarProveedor]    Script Date: 20/4/2021 12:23:17 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[editarProveedor]

@Id_proveedor int, @Id_compra int, @Descripcion_proveedor varchar(100), @Direccion varchar(50), @Telefono int, @Representante varchar(15)
as

update Proveedor set Id_proveedor=@Id_proveedor, Id_compra=@Id_compra, Descripcion_proveedor=@Descripcion_proveedor, Direccion=@Direccion, Telefono=@Telefono, Representante=@Representante
where Id_proveedor=Id_proveedor

GO
/****** Object:  StoredProcedure [dbo].[eliminarCliente]    Script Date: 20/4/2021 12:23:17 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[eliminarCliente]
 @Id_cliente nchar(3)
 
 as
 begin

 delete from Cliente

 where Id_cliente= @Id_cliente
 end
GO
/****** Object:  StoredProcedure [dbo].[eliminarCompras]    Script Date: 20/4/2021 12:23:17 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[eliminarCompras]
 @Id_compra nchar(3)
 
 as
 begin

 delete from Compras

 where Id_compra = @Id_compra
 end
GO
/****** Object:  StoredProcedure [dbo].[eliminarDetalle_compra]    Script Date: 20/4/2021 12:23:17 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[eliminarDetalle_compra]
 @Id_detalle_compra nchar(3)
 
 as
 begin

 delete from Detalle_compra

 where Id_detalle_compra = @Id_detalle_compra
 end
GO
/****** Object:  StoredProcedure [dbo].[eliminardetalle_factura]    Script Date: 20/4/2021 12:23:17 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[eliminardetalle_factura]
 @Id_detalle_factura nchar(3)

 as
 begin

 delete from Detalle_factura

 where Id_detalle_factura = @Id_detalle_factura
 end
GO
/****** Object:  StoredProcedure [dbo].[eliminarFactura]    Script Date: 20/4/2021 12:23:17 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[eliminarFactura]
 @Id_factura nchar(3)
 
 as
 begin

 delete from Factura

 where Id_factura = @Id_factura
 end
GO
/****** Object:  StoredProcedure [dbo].[eliminarInventario]    Script Date: 20/4/2021 12:23:17 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 create procedure [dbo].[eliminarInventario]
 @Id_producto nchar(3)
 
 as
 begin

 delete from Inventario

 where Id_producto = @Id_producto
 end
GO
/****** Object:  StoredProcedure [dbo].[eliminarLaboratorio]    Script Date: 20/4/2021 12:23:17 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[eliminarLaboratorio]
 @Id_laboratorio nchar(3)
 
 as
 begin

 delete from Laboratorio

 where Id_laboratorio = @Id_laboratorio
 end
GO
/****** Object:  StoredProcedure [dbo].[eliminarProducto]    Script Date: 20/4/2021 12:23:17 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[eliminarProducto]
 @Id_producto nchar(3)

 as
 begin

 delete from Producto

 where Id_producto = @Id_producto
 end
GO
/****** Object:  StoredProcedure [dbo].[eliminarProveedor]    Script Date: 20/4/2021 12:23:17 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[eliminarProveedor]
 @Id_proveedor nchar(3)
 
 as
 begin

 delete from Proveedor

 where Id_proveedor = @Id_proveedor
 end
GO
USE [master]
GO
ALTER DATABASE [YELCARL] SET  READ_WRITE 
GO
