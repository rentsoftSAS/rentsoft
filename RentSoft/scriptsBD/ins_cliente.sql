use rentsoftbd;
DELIMITER $$
DROP PROCEDURE IF EXISTS ins_cliente $$
CREATE PROCEDURE ins_cliente
(in  p_Documento varchar(50), 
in  p_Nombre varchar(200), 
in  p_Direccion varchar(200),
in  p_Apellido varchar(200),
in  p_Correo varchar(200),
in  p_idTipoDocumento int, 
in  p_Id_UsuarioCrea int)
BEGIN
declare fechaActual datetime;
set fechaActual = now();

insert into cliente
(Documento, 
Nombre, 
Apellido, 
Direccion, 
Correo, 
idTipoDocumento, 
Activo, 
Id_UsuarioCrea, 
FechaCreacion, 
IdUsuarioModifica, 
FechaModificacion) 
values
(p_Documento, 
p_Nombre, 
p_Apellido, 
p_Direccion, 
p_Correo, 
p_idTipoDocumento, 
1, 
p_Id_UsuarioCrea, 
fechaActual, 
p_Id_UsuarioCrea, 
fechaActual);
END$$
DELIMITER ;