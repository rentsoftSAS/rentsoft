use rentsoftbd;
DELIMITER $$
DROP PROCEDURE IF EXISTS udp_elemento $$
CREATE PROCEDURE udp_elemento
(in p_id int,
in p_Codigo varchar(100), 
in p_IdEstadoElemento int , 
in p_FechaCompra date, 
in p_IdAnexo int , 
in p_Horometro bigint, 
in p_Nombre varchar(500), 
in p_PrecioElemento decimal(10,0), 
in p_TarifaAlquiler decimal(10,0), 
in p_CodigoSerial varchar(500), 
in p_IdTipoElemento int , 
in p_IdTipoFacturacion int , 
in p_IdUsuarioModifica int )
BEGIN
declare fechaActual datetime;
set fechaActual = now();
update elemento
set Codigo = case when  p_Codigo is null then  Codigo else p_Codigo end , 
IdEstadoElemento = case when  p_IdEstadoElemento is null then  IdEstadoElemento else p_IdEstadoElemento end , 
FechaCompra = case when  p_FechaCompra is null then FechaCompra  else p_FechaCompra  end , 
IdAnexo = case when  p_IdAnexo is null then  IdAnexo else p_IdAnexo end , 
Horometro = case when  p_Horometro is null then Horometro  else p_Horometro end , 
Nombre = case when p_Nombre  is null then Nombre  else p_Nombre end , 
PrecioElemento = case when  p_PrecioElemento is null then PrecioElemento  else p_PrecioElemento end , 
TarifaAlquiler = case when  p_TarifaAlquiler is null then TarifaAlquiler  else p_TarifaAlquiler end , 
CodigoSerial = case when p_CodigoSerial  is null then CodigoSerial  else p_CodigoSerial end , 
IdTipoElemento = case when p_IdTipoElemento  is null then IdTipoElemento  else  p_IdTipoElemento end , 
IdTipoFacturacion = case when  p_IdTipoFacturacion is null then IdTipoFacturacion  else p_IdTipoFacturacion end , 
IdUsuarioModifica=p_IdUsuarioModifica , 
FechaModificacion=fechaActual 
 where id=p_id;
END$$
DELIMITER ;