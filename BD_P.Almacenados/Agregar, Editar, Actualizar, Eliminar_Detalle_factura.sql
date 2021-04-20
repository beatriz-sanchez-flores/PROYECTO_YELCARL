create procedure agregarDetalle_factura
@Id_detalle_factura int, @Id_factura int, @Nombre_producto varchar(30), @Precio_producto int, @Cantidad int, @Estado_producto varchar(10), @Descuento int, @Total int

as
begin

insert into Detalle_factura(Id_detalle_factura, Id_factura, Nombre_producto, Precio_producto, Cantidad, Estado_producto, Descuento, Total)
values (@Id_detalle_factura, @Id_factura, @Nombre_producto, @Precio_producto, @Cantidad, @Estado_producto, @Descuento, @Total)
end 

create procedure editarDetalle_factura

@Id_detalle_factura int, @Id_factura int, @Nombre_producto varchar(30), @Precio_producto int, @Cantidad int, @Estado_producto varchar(10), @Descuento int, @Total int
as

update Detalle_factura set Id_detalle_factura=@Id_detalle_factura, Id_factura=@Id_factura, Nombre_producto=@Nombre_producto, Precio_producto=@Precio_producto, Cantidad=@Cantidad, Estado_producto=@Estado_producto, Descuento=@Descuento, Total=@Total 
where Id_detalle_factura=Id_detalle_factura

 create procedure eliminardetalle_factura
 @Id_detalle_factura nchar(3)

 as
 begin

 delete from Detalle_factura

 where Id_detalle_factura = @Id_detalle_factura
 end