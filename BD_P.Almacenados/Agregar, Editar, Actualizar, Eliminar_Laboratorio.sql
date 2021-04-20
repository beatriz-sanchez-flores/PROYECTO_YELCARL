create procedure agregarLaboratorio
@Id_laboratorio int, @Nombre varchar(30), @Descripcion_laboratorio varchar(50)

as
begin

insert into Laboratorio(Id_laboratorio, Nombre, Descripcion_laboratorio)
values (@Id_laboratorio, @Nombre, @Descripcion_laboratorio)
end 

create procedure editarLaboratorio

@Id_laboratorio int, @Nombre varchar(30), @Descripcion_laboratorio varchar(50)
as

update Laboratorio set Id_laboratorio=@Id_laboratorio, Nombre=@Nombre, Descripcion_laboratorio=@Descripcion_laboratorio
where Id_laboratorio=Id_laboratorio

 create procedure eliminarLaboratorio
 @Id_laboratorio nchar(3)
 
 as
 begin

 delete from Laboratorio

 where Id_laboratorio = @Id_laboratorio
 end