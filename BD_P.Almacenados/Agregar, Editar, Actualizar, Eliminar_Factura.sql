create procedure agregarFactura
@Id_factura int, @Id_cliente int, @Codigo_factura int, @Hora_venta time, @Fecha_venta date

as
begin

insert into Factura(Id_factura, Id_cliente, Codigo_factura, Hora_venta, Fecha_venta)
values (@Id_factura, @Id_cliente, @Codigo_factura, @Hora_venta, @Fecha_venta)
end 

create procedure editarFactura

@Id_factura int, @Id_cliente int, @Codigo_factura int, @Hora_venta time, @Fecha_venta date
as

update Factura set Id_factura=@Id_factura, Id_cliente=@Id_cliente, Codigo_factura=@Codigo_factura, Hora_venta=@Hora_venta, Fecha_venta=@Fecha_venta
where Id_factura=Id_factura

 create procedure eliminarFactura
 @Id_factura nchar(3)
 
 as
 begin

 delete from Factura

 where Id_factura = @Id_factura
 end
