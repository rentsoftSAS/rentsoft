DELIMITER $$
DROP PROCEDURE IF EXISTS del_sucursal $$
CREATE PROCEDURE del_sucursal
( in p_id int,
in p_IdUsuarioCrea tinyint
)
BEGIN
declare fechaActual datetime;
set fechaActual = now();
update  sucursal
set 
activo=0,
IdUsuarioModifica=p_IdUsuarioCrea, 
FechaModificacion=fechaActual
where id=p_id;
END$$
DELIMITER ;