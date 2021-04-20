create procedure agregarProducto
@Id_producto int, @Id_laboratorio int, @Codigo_producto int, @Nombre_producto varchar(20), @Descripcion_producto varchar(50), @Categoria varchar(20), @Cantidad int, @Cantidad_minima int, @Fecha_vencimiento date, @Presentacion_producto varchar(50)

as
begin

insert into Producto(Id_producto, Id_laboratorio, Codigo_producto, Nombre_producto, Descripcion_producto, Categoria, Cantidad, Cantidad_minima, Fecha_vencimiento, Presentacion_producto)
values (@Id_producto, @Id_laboratorio, @Codigo_producto, @Nombre_producto, @Descripcion_producto, @Categoria, @Cantidad, @Cantidad_minima, @Fecha_vencimiento, @Presentacion_producto)

end 

create procedure editarProducto

@Id_producto int, @Id_laboratorio int, @Codigo_producto int, @Nombre_producto varchar(20), @Descripcion_producto varchar(50), @Categoria varchar(20), @Cantidad int, @Cantidad_minima int, @Fecha_vencimiento date, @Presentacion_producto varchar(50)

as

 update Producto set Id_producto=@Id_producto, Id_laboratorio=@Id_laboratorio, Codigo_producto=@Codigo_producto, Nombre_producto=@Nombre_producto, Descripcion_producto=@Descripcion_producto, Categoria=@Categoria, Cantidad=@Cantidad, Cantidad_minima=@Cantidad_minima, Fecha_vencimiento=@Fecha_vencimiento, Presentacion_producto=@Presentacion_producto
 where Id_producto=@Id_producto

 create procedure eliminarProducto
 @Id_producto nchar(3)

 as
 begin

 delete from Producto

 where Id_producto = @Id_producto
 end