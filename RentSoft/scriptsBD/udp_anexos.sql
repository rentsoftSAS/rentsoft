use rentsoftbd;
DELIMITER $$
DROP PROCEDURE IF EXISTS udp_anexos $$
CREATE PROCEDURE udp_anexos
(in p_id int,
in p_tabla varchar(100) , 
in p_Ruta varchar(500), 
in p_IdRegistro bigint(20) , 
in p_IdUsuarioModifica int)
BEGIN
declare fechaActual datetime;
set fechaActual = now();
update anexos
set 
 tabla= case when p_tabla is null then tabla else p_tabla end,
 Ruta= case when p_Ruta is null then Ruta else p_Ruta end, 
 IdRegistro= case when p_IdRegistro is null then IdRegistro else p_IdRegistro end, 
 IdUsuarioModifica=  p_IdUsuarioModifica , 
 FechaModificacion= fechaActual
 where id=p_id;
END$$
DELIMITER ;