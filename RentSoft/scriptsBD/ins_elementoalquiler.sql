use rentsoftbd;
DELIMITER $$
DROP PROCEDURE IF EXISTS ins_elementoalquiler $$
CREATE PROCEDURE ins_elementoalquiler
(in p_IdAlquiler int , 
in p_IdElemento int, 
in p_IdEstadoAlquiler int, 
in p_FechaDespacho date, 
in p_FechaDevolucion date, 
in p_CantidadAlquilada bigint, 
in p_IdTipoFacturacion int, 
in p_Activo tinyint, 
in p_Id_UsuarioCrea int
)
BEGIN
declare fechaActual datetime;
set fechaActual = now();
insert into elementoalquiler(
IdAlquiler, 
IdElemento, 
IdEstadoAlquiler, 
FechaDespacho, 
FechaDevolucion, 
CantidadAlquilada, 
IdTipoFacturacion, 
Activo, 
Id_UsuarioCrea, 
FechaCreacion, 
IdUsuarioModifica, 
FechaModificacion
)
values(
p_IdAlquiler, 
p_IdElemento, 
p_IdEstadoAlquiler, 
p_FechaDespacho, 
p_FechaDevolucion, 
p_CantidadAlquilada, 
p_IdTipoFacturacion, 
1, 
p_Id_UsuarioCrea, 
fechaActual, 
p_Id_UsuarioCrea, 
fechaActual
) ;
END$$
DELIMITER ;