use rentsoftbd;
DELIMITER $$
DROP PROCEDURE IF EXISTS del_anexos $$
CREATE PROCEDURE del_anexos
(in p_id int,
in p_IdUsuarioModifica int)
BEGIN
declare fechaActual datetime;
set fechaActual = now();
update anexos
set 
 activo=0,
 IdUsuarioModifica=  p_IdUsuarioModifica , 
 FechaModificacion= fechaActual
 where id=p_id;
END$$
DELIMITER ;