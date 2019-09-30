DELIMITER $$
DROP PROCEDURE IF EXISTS udp_pais $$
CREATE PROCEDURE udp_pais
( in p_id int,
  in p_Nombre varchar(200), 
  in p_IdUsuarioModifica tinyint
)
BEGIN
declare fechaActual datetime;
set fechaActual = now();
update pais
set 
Nombre = case when p_Nombre  is null then Nombre  else p_Nombre end, 
IdUsuarioModifico= p_IdUsuarioModifica, 
FechaModificacion= fechaActual
where id= p_id;
END$$
DELIMITER ;