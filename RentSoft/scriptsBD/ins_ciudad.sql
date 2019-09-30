use rentsoftbd;
DELIMITER $$
DROP PROCEDURE IF EXISTS ins_ciudad $$
CREATE PROCEDURE ins_ciudad
(in p_Nombre varchar(200), 
in p_IdPais int, 
in p_IdUsuarioCrea int )
BEGIN
declare fechaActual datetime;
set fechaActual = now();

insert into ciudad
(
Nombre, 
IdPais, 
Activo, 
IdUsuarioCrea, 
FechaCreacion, 
IdUsuarioModifica, 
FechaModificacion
)
values
(p_Nombre, 
p_IdPais, 
1, 
p_IdUsuarioCrea, 
fechaActual, 
p_IdUsuarioCrea, 
fechaActual);
END$$
DELIMITER ;