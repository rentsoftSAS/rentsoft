use rentsoftbd;
DELIMITER $$
DROP PROCEDURE IF EXISTS udp_estadosalquiler $$
CREATE PROCEDURE udp_estadosalquiler
(in p_id int ,
 in p_Codigo varchar(100),
 in p_Descripcion varchar(5000), 
 in p_Estado varchar(500),
 in p_IdUsuarioModifica tinyint
)
BEGIN
declare fechaActual datetime;
set fechaActual = now();
update estadosalquiler
set 
Codigo = case when Codigo is null then Codigo else Codigo end , 
Descripcion = case when Descripcion is null then Descripcion else Descripcion end , 
Estado = case when Estado is null then  Estado else Estado end , 
IdUsuarioModifica=p_IdUsuarioModifica, 
FechaModificacion=fechaActual
where id=p_id;
END$$
DELIMITER ;