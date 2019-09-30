use rentsoftbd;
DELIMITER $$
DROP PROCEDURE IF EXISTS del_bodega $$
CREATE PROCEDURE del_bodega
(in p_id int ,
in p_IdUsuarioCrea int )
BEGIN
declare fechaActual datetime;
set fechaActual = now();

update bodega
set 
activo=0,
IdUsuarioModifica=p_IdUsuarioCrea, 
FechaModificacion=fechaActual
where id=p_id;
END$$
DELIMITER ;