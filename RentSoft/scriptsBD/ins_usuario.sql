use rentsoftbd;
DELIMITER $$
DROP PROCEDURE IF EXISTS ins_usuario $$
CREATE PROCEDURE ins_usuario
(in  p_Nombre varchar(200), 
in  p_Apellido varchar(200), 
in  p_clave varchar(2184),  
in  p_Usuario varchar(500), 
in  p_Pseudonimo varchar(500),  
in  p_Telefono varchar(200),  
in  p_Estado tinyint, 
in  p_Correo varchar(200),
in  p_IdRol int,
in  p_Id_UsuarioCrea int)
BEGIN
declare fechaActual datetime;
set fechaActual = now();

insert into tipodocumento
(Nombre, 
Apellido, 
clave, 
Usuario, 
Pseudonimo, 
Telefono, 
Estado, 
Correo, 
IdRol,
Activo, 
IdUsuarioCrea, 
FechaCreacion, 
IdUsuarioModifica, 
FechaModificacion
) 
values
( p_Nombre, 
p_Apellido, 
p_clave, 
p_Usuario, 
p_Pseudonimo, 
p_Telefono, 
p_Estado, 
p_Correo, 
p_IdRol,
1, 
p_Id_UsuarioCrea, 
fechaActual, 
p_Id_UsuarioCrea, 
fechaActual);
END$$
DELIMITER ;