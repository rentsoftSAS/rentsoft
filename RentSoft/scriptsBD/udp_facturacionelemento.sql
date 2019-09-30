DELIMITER $$
DROP PROCEDURE IF EXISTS udp_facturacionelemento $$
CREATE PROCEDURE udp_facturacionelemento
(in p_id int,
in p_Cantidad int , 
in p_IdElementoAlquiler int, 
in p_FechaFinalAlquiler datetime , 
in p_FechaInicialFacturacion datetime, 
in p_IdTarifaAlquiler int, 
in p_Total double, 
in p_IdUsuarioModifica tinyint
)
BEGIN
declare fechaActual datetime;
set fechaActual = now();
update  estadosalquiler
set 
Cantidad= case when p_Cantidad is null then Cantidad else  p_Cantidad end , 
IdElementoAlquiler= case when p_IdElementoAlquiler is null then IdElementoAlquiler else p_IdElementoAlquiler end , 
FechaFinalAlquiler= case when p_FechaFinalAlquiler is null then FechaFinalAlquiler else p_FechaFinalAlquiler end , 
FechaInicialFacturacion= case when p_FechaInicialFacturacion is null then FechaInicialFacturacion else p_FechaInicialFacturacion end , 
IdTarifaAlquiler= case when p_IdTarifaAlquiler is null then IdTarifaAlquiler else p_IdTarifaAlquiler end , 
Total= case when p_Total is null then Total else p_Total end , 
IdUsuarioModifica=p_IdUsuarioModifica,
FechaModificacion=fechaActual
where id=p_id;
END$$
DELIMITER ;