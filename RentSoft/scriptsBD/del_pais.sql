DELIMITER $$
DROP PROCEDURE IF EXISTS del_pais $$
CREATE PROCEDURE del_pais
( in p_id int,
  in p_IdUsuarioModifica tinyint
)
BEGIN
declare fechaActual datetime;
set fechaActual = now();
update pais
set 
activo=0, 
IdUsuarioModifico= p_IdUsuarioModifica, 
FechaModificacion= fechaActual
where id= p_id;
END$$
DELIMITER ;