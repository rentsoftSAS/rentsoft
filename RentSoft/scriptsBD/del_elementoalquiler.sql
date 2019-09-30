use rentsoftbd;
DELIMITER $$
DROP PROCEDURE IF EXISTS del_elementoalquiler $$
CREATE PROCEDURE del_elementoalquiler
(in p_id int,
 in p_IdUsuarioModifica int
)
BEGIN
declare fechaActual datetime;
set fechaActual = now();
update elementoalquiler
set 
activo=0,
IdUsuarioModifica=p_IdUsuarioModifica, 
FechaModificacion=fechaActual
where id = p_id;
END$$
DELIMITER ;