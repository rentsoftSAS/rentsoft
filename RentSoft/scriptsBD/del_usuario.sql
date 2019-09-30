use rentsoftbd;
DELIMITER $$
DROP PROCEDURE IF EXISTS del_usuario $$
CREATE PROCEDURE del_usuario
(in p_id int,

in  p_IdUsuarioModifica int)
BEGIN
declare fechaActual datetime;
set fechaActual = now();

update tipodocumento
set activo=0,
IdUsuarioModifica=p_IdUsuarioModifica, 
FechaModificacion=fechaActual
where 
id = p_id;
END$$
DELIMITER ;