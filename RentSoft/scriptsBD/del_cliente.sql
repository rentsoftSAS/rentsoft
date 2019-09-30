use rentsoftbd;
DELIMITER $$
DROP PROCEDURE IF EXISTS del_cliente $$
CREATE PROCEDURE del_cliente
(in p_id int,
in  p_IdUsuarioModifica int)
BEGIN
declare fechaActual datetime;
set fechaActual = now();

update cliente
set activo=0, 
IdUsuarioModifica=p_IdUsuarioModifica, 
FechaModificacion=fechaActual
where 
id=p_id;
END$$
DELIMITER ;