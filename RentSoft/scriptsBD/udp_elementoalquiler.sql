use rentsoftbd;
DELIMITER $$
DROP PROCEDURE IF EXISTS udp_elementoalquiler $$
CREATE PROCEDURE udp_elementoalquiler
(in p_id int,
in p_IdAlquiler int , 
in p_IdElemento int, 
in p_IdEstadoAlquiler int, 
in p_FechaDespacho date, 
in p_FechaDevolucion date, 
in p_CantidadAlquilada bigint, 
in p_IdTipoFacturacion int, 
in p_Activo tinyint, 
in p_IdUsuarioModifica int
)
BEGIN
declare fechaActual datetime;
set fechaActual = now();
update elementoalquiler
set 
IdAlquiler= case when p_IdAlquiler is null then IdAlquiler else p_IdAlquiler end, 
IdElemento= case when p_IdElemento is null then IdElemento else p_IdElemento end, 
IdEstadoAlquiler= case when p_IdEstadoAlquiler is null then IdEstadoAlquiler else p_IdEstadoAlquiler end, 
FechaDespacho= case when p_FechaDespacho is null then FechaDespacho else p_FechaDespacho end, 
FechaDevolucion= case when p_FechaDevolucion is null then FechaDevolucion else p_FechaDevolucion end, 
CantidadAlquilada= case when p_CantidadAlquilada is null then CantidadAlquilada else p_CantidadAlquilada end, 
IdTipoFacturacion= case when p_IdTipoFacturacion is null then IdTipoFacturacion else p_IdTipoFacturacion end, 
IdUsuarioModifica=p_IdUsuarioModifica, 
FechaModificacion=fechaActual
where id = p_id;
END$$
DELIMITER ;