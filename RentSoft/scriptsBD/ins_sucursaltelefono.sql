use rentsoftbd;
DELIMITER $$
DROP PROCEDURE IF EXISTS ins_sucursaltelefono $$
CREATE PROCEDURE ins_sucursaltelefono
(in IdSucursal int , 
in Telefono varchar(100) ,
in  p_Id_UsuarioCrea int)
BEGIN
declare fechaActual datetime;
set fechaActual = now();

insert into sucursaltelefono
(
IdSucursal, 
Telefono,
Activo, 
Id_UsuarioCrea, 
FechaCreacion, 
IdUsuarioModifica, 
FechaModificacion) 
values
( p_IdSucursal, 
p_Telefono,
1, 
p_Id_UsuarioCrea, 
fechaActual, 
p_Id_UsuarioCrea, 
fechaActual);
END$$
DELIMITER ;