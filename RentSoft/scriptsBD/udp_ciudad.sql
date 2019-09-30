use rentsoftbd;
DELIMITER $$
DROP PROCEDURE IF EXISTS udp_ciudad $$
CREATE PROCEDURE udp_ciudad
(
in p_id int,
in p_Nombre varchar(200), 
in p_IdPais int, 
in p_IdUsuarioModifica int )
BEGIN
declare fechaActual datetime;
set fechaActual = now();
update ciudad
set 
Nombre=p_Nombre, 
IdPais=p_IdPais,  
IdUsuarioModifica=p_IdUsuarioModifica, 
FechaModificacion=fechaActual
where id=p_id ;
END$$
DELIMITER ;