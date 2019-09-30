use rentsoftbd;
DELIMITER $$
DROP PROCEDURE IF EXISTS udp_tipodocumento $$
CREATE PROCEDURE udp_tipodocumento
(in p_id int,
in p_Tipodocumento varchar(50),
in p_Descripcion varchar(100),
in  p_IdUsuarioModifica int)
BEGIN
declare fechaActual datetime;
set fechaActual = now();

update tipodocumento
set Tipodocumento= case when p_Tipodocumento is null then Tipodocumento else p_Tipodocumento end , 
Descripcion= case when p_Descripcion is null then Descripcion else p_Descripcion end, 
IdUsuarioModifica=p_IdUsuarioModifica, 
FechaModificacion=fechaActual
where id=p_id;
END$$
DELIMITER ;