use rentsoftbd;
DELIMITER $$
DROP PROCEDURE IF EXISTS udp_alquiler $$
CREATE PROCEDURE udp_alquiler
(in p_id int,
in p_CodigoAlquiler varchar(100) , 
in p_IdEstadoAlquiler int , 
in p_FechaAlquiler datetime , 
in p_Observaciones varchar(5000) , 
in  p_IdCliente int  , 
in p_Activo tinyint ,
in  p_IdUsuarioModifica int )
BEGIN
declare fechaActual datetime;
set fechaActual = now();
update  alquiler
set  CodigoAlquiler= case when p_CodigoAlquiler is null then CodigoAlquiler else p_CodigoAlquiler end, 
 IdEstadoAlquiler =case when p_IdEstadoAlquiler is null then IdEstadoAlquiler else  p_IdEstadoAlquiler end, 
 FechaAlquiler =case when p_FechaAlquiler is null then FechaAlquiler else p_FechaAlquiler end, 
 Observaciones =case when p_Observaciones is null then Observaciones else p_Observaciones end, 
 IdCliente =case when p_IdCliente is null then IdCliente  else p_IdCliente end, 
 Activo =case when p_Activo is null then Activo else p_Activo end, 
 IdUsuarioModifica=p_IdUsuarioModifica, 
 FechaModificacion=fechaActual
 where id=p_int;
 END$$
DELIMITER ;