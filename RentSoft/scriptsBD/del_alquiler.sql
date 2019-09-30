use rentsoftbd;
DELIMITER $$
DROP PROCEDURE IF EXISTS del_alquiler $$
CREATE PROCEDURE del_alquiler
(in p_id int,
in  p_IdUsuarioModifica int )
BEGIN
declare fechaActual datetime;
set fechaActual = now();
update  alquiler
set activo =0 ,
IdUsuarioModifica=p_IdUsuarioModifica, 
FechaModificacion=fechaActual
where id=p_int;
END$$
DELIMITER ;