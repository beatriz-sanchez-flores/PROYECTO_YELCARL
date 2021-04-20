create procedure agregarInventario
@Id_producto int, @Id_compra int, @Nombre varchar(45), @Descripcion varchar(45), @Cantidad int, @Fecha_ingreso date, @Fecha_egreso date, @Existencia_minima_producto varchar(30), @Total_ganancia int

as
begin

insert into Inventario(Id_producto, Id_compra, Nombre, Descripcion, Cantidad, Fecha_ingreso, Fecha_egreso , Existencia_minima_producto, Total_ganancia)
values (@Id_producto, @Id_compra, @Nombre, @Descripcion, @Cantidad, @Fecha_ingreso, @Fecha_egreso, @Existencia_minima_producto, @Total_ganancia)
end 

create procedure editarInventario

@Id_producto int, @Id_compra int, @Nombre varchar(45), @Descripcion varchar(45), @Cantidad int, @Fecha_ingreso date, @Fecha_egreso date, @Existencia_minima_producto varchar(30), @Total_ganancia int
as

update Inventario set Id_producto=@Id_producto, Id_compra=@Id_compra, Nombre=@Nombre, Descripcion=@Descripcion, Cantidad=@Cantidad, Fecha_ingreso=@Fecha_ingreso, Fecha_egreso=@Fecha_egreso, Existencia_minima_producto=@Existencia_minima_producto, Total_ganancia=@Total_ganancia
where Id_producto=Id_producto

 create procedure eliminarInventario
 @Id_producto nchar(3)
 
 as
 begin

 delete from Inventario

 where Id_producto = @Id_producto
 end