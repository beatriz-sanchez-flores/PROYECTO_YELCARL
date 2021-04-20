create procedure agregarProveedor
@Id_proveedor int, @Id_compra int, @Descripcion_proveedor varchar(100), @Direccion varchar(50), @Telefono int, @Representante varchar(15)

as
begin

insert into Proveedor(Id_proveedor, Id_compra, Descripcion_proveedor, Direccion, Telefono, Representante)
values (@Id_proveedor, @Id_compra, @Descripcion_proveedor, @Direccion, @Telefono, @Representante)
end 

create procedure editarProveedor

@Id_proveedor int, @Id_compra int, @Descripcion_proveedor varchar(100), @Direccion varchar(50), @Telefono int, @Representante varchar(15)
as

update Proveedor set Id_proveedor=@Id_proveedor, Id_compra=@Id_compra, Descripcion_proveedor=@Descripcion_proveedor, Direccion=@Direccion, Telefono=@Telefono, Representante=@Representante
where Id_proveedor=Id_proveedor

 create procedure eliminarProveedor
 @Id_proveedor nchar(3)
 
 as
 begin

 delete from Proveedor

 where Id_proveedor = @Id_proveedor
 end