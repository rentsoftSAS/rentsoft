use rentsoftbd;
DELIMITER $$
DROP PROCEDURE IF EXISTS del_elemento $$
CREATE PROCEDURE del_elemento
(in p_id int,
in p_IdUsuarioModifica int )
BEGIN
declare fechaActual datetime;
set fechaActual = now();
update elemento
set activo=0, 
IdUsuarioModifica=p_IdUsuarioModifica , 
FechaModificacion=fechaActual 
 where id=p_id;
END$$
DELIMITER ;