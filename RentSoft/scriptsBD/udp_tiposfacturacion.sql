use rentsoftbd;
DELIMITER $$
DROP PROCEDURE IF EXISTS udp_tiposfacturacion $$
CREATE PROCEDURE udp_tiposfacturacion
(in p_id int, 
in p_TipoFacturacion varchar(200),
in p_Descripcion varchar(1000),
in  p_IdUsuarioModifica int)
BEGIN
declare fechaActual datetime;
set fechaActual = now();

update tiposfacturacion
set TipoFacturacion= case when p_TipoFacturacion is null then TipoFacturacion else p_TipoFacturacion end ,
 Descripcion= case when p_Descripcion is null then Descripcion else p_Descripcion end ,
IdUsuarioModifica=p_IdUsuarioModifica, 
FechaModificacion=fechaActual
where 
id=p_id;
END$$
DELIMITER ;