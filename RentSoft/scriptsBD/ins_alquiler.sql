use rentsoftbd;
DELIMITER $$
DROP PROCEDURE IF EXISTS ins_alquiler $$
CREATE PROCEDURE ins_alquiler
(in p_CodigoAlquiler varchar(100), 
in p_IdEstadoAlquiler int, 
in p_FechaAlquiler datetime, 
in p_Observaciones varchar(5000), 
in  p_IdCliente int , 
in  p_IdUsuarioCrea int )
BEGIN
declare fechaActual datetime;
set fechaActual = now();
insert into alquiler
( CodigoAlquiler, 
 IdEstadoAlquiler, 
 FechaAlquiler, 
 Observaciones, 
 IdCliente, 
 Activo, 
 IdUsuarioCrea, 
 FechaCreacion, 
 IdUsuarioModifica, 
 FechaModificacion)
 values
 (p_CodigoAlquiler, 
 p_IdEstadoAlquiler, 
 p_FechaAlquiler,  
 p_Observaciones,  
 p_IdCliente,  1,  
 p_IdUsuarioCrea, 
 now(),  
 p_IdUsuarioCrea,
 now()) ;
END$$
DELIMITER ;