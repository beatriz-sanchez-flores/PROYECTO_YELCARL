create procedure agregarDetalle_compra
@Id_detalle_compra varchar(25), @Id_compra int, @Cantidad int, @Precio_compra int

as
begin

insert into Detalle_compra(Id_detalle_compra, Id_compra, Cantidad, Precio_compra)
values (@Id_detalle_compra, @Id_compra, @Cantidad, @Precio_compra)
end 

create procedure editarDetalle_compra

@Id_detalle_compra varchar(25), @Id_compra int, @Cantidad int, @Precio_compra int
as

update Detalle_compra set Id_detalle_compra=@Id_detalle_compra, Id_compra=@Id_compra, Cantidad=@Cantidad, Precio_compra=@Precio_compra
where Id_detalle_compra=Id_detalle_compra

 create procedure eliminarDetalle_compra
 @Id_detalle_compra nchar(3)
 
 as
 begin

 delete from Detalle_compra

 where Id_detalle_compra = @Id_detalle_compra
 end