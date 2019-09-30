use rentsoftbd;
DELIMITER $$
DROP PROCEDURE IF EXISTS del_estadosalquiler $$
CREATE PROCEDURE del_estadosalquiler
(in p_id int ,
 in p_IdUsuarioModifica tinyint
)
BEGIN
declare fechaActual datetime;
set fechaActual = now();
update estadosalquiler
set 
activo=0, 
IdUsuarioModifica=p_IdUsuarioModifica, 
FechaModificacion=fechaActual
where id=p_id;
END$$
DELIMITER ;