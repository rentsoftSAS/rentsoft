use rentsoftbd;
DELIMITER $$
DROP PROCEDURE IF EXISTS ins_anexos $$
CREATE PROCEDURE ins_anexos
(in p_tabla varchar(100) , 
in p_Ruta varchar(500), 
in p_IdRegistro bigint(20) , 
in p_IdUsuarioCrea int)
BEGIN
declare fechaActual datetime;
set fechaActual = now();
insert into anexos
(
 tabla,
 Ruta, 
 IdRegistro, 
 IdUsuarioCrea, 
 Activo, 
 FechaCreacion, 
 IdUsuarioModifica, 
 FechaModificacion)
 values 
 (
 p_tabla,
  p_Ruta, 
  p_IdRegistro, 
 p_IdUsuarioCrea, 
 1, 
 fechaActual, 
 p_IdUsuarioCrea, 
 fechaActual);
END$$
DELIMITER ;