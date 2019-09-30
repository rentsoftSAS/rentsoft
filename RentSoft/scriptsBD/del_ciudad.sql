use rentsoftbd;
DELIMITER $$
DROP PROCEDURE IF EXISTS del_ciudad $$
CREATE PROCEDURE del_ciudad
(
in p_id int,
in p_IdUsuarioModifica int )
BEGIN
declare fechaActual datetime;
set fechaActual = now();
update ciudad
set 
activo=0,
IdUsuarioModifica=p_IdUsuarioModifica, 
FechaModificacion=fechaActual
where id=p_id ;
END$$
DELIMITER ;