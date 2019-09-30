DELIMITER $$
DROP PROCEDURE IF EXISTS udp_rol $$
CREATE PROCEDURE udp_rol
(in p_id int,
in p_Rol varchar(200), 
 in p_IdUsuarioCrea tinyint
)
BEGIN
declare fechaActual datetime;
set fechaActual = now();
update rol
set Rol= case when p_Rol is null then Rol else p_Rol end , 
IdUsuarioModifica=p_IdUsuarioCrea, 
FechaModificacion=fechaActual
where id=p_id;
END$$
DELIMITER ;