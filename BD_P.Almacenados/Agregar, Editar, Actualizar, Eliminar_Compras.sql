create procedure agregarCompras
@Id_compra int, @Id_proveedor int, @N_factura varchar(500), @Fecha date

as
begin

insert into Compras(Id_compra, Id_proveedor, N_factura, Fecha)
values (@Id_compra, @Id_proveedor, @N_factura, @Fecha)
end 

create procedure editarCompras

@Id_compra int, @Id_proveedor int, @N_factura varchar(500), @Fecha date
as

update Compras set Id_compra=@Id_compra, Id_proveedor=@Id_proveedor, N_factura=@N_factura, Fecha=@Fecha
where Id_compra=Id_compra

 create procedure eliminarCompras
 @Id_compra nchar(3)
 
 as
 begin

 delete from Compras

 where Id_compra = @Id_compra
 end