use rentsoftbd;
DELIMITER $$
DROP PROCEDURE IF EXISTS udp_estadoselemento $$
CREATE PROCEDURE udp_estadoselemento
(in p_id int,
 in p_Estado varchar(200), 
 in p_Descripcion varchar(1000),
 in p_IdUsuarioModifica tinyint
)
BEGIN
declare fechaActual datetime;
set fechaActual = now();
update  estadosalquiler
set 
Estado= case when Estado is null then Estado else Estado end , 
Descripcion= case when Descripcion is null then Descripcion else Descripcion end , 
IdUsuarioModifica=p_IdUsuarioModifica, 
FechaModificacion=fechaActual
where id=p_id;
END$$
DELIMITER ;