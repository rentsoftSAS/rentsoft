use rentsoftbd;
create view v_usuario as 

select
usuario.id, 
usuario.Nombre, 
usuario.Apellido, 
usuario.clave, 
usuario.Usuario, 
usuario.Pseudonimo, 
usuario.Telefono, 
usuario.Estado, 
usuario.Correo, 
usuario.IdRol,
	rol.Rol
from
usuario
inner join rol on rol.id=usuario.IdRol
where
usuario.activo=1

