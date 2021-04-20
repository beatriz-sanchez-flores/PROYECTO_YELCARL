create procedure agregarCliente
@Id_cliente int, @Primer_nombre varchar(15), @Segundo_nombre varchar(15), @Primer_apellido varchar(15), @Segundo_apellido varchar(15), @Cedula varchar(25)

as
begin

insert into Cliente(Id_cliente, Primer_nombre, Segundo_nombre, Primer_apellido, Segundo_apellido, Cedula)
values (@Id_cliente, @Primer_nombre, @Segundo_nombre, @Primer_apellido, @Segundo_apellido, @Cedula)
end 

create procedure editarCompras

@Id_cliente int, @Primer_nombre varchar(15), @Segundo_nombre varchar(15), @Primer_apellido varchar(15), @Segundo_apellido varchar(15), @Cedula varchar(25)
as

update Cliente set Id_cliente=@Id_cliente, Primer_nombre=@Primer_nombre, Segundo_nombre=@Segundo_nombre, Primer_apellido=@Segundo_apellido, Cedula=@Cedula
where Id_cliente=Id_cliente

 create procedure eliminarCliente
 @Id_cliente nchar(3)
 
 as
 begin

 delete from Cliente

 where Id_cliente= @Id_cliente
 end