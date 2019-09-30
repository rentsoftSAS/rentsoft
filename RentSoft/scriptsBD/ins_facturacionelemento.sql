DELIMITER $$
DROP PROCEDURE IF EXISTS ins_facturacionelemento $$
CREATE PROCEDURE ins_facturacionelemento
(in p_Cantidad int , 
in p_IdElementoAlquiler int, 
in p_FechaFinalAlquiler datetime , 
in p_FechaInicialFacturacion datetime, 
in p_IdTarifaAlquiler int, 
in p_Total double, 
in p_IdUsuarioCrea tinyint
)
BEGIN
declare fechaActual datetime;
set fechaActual = now();
insert into estadosalquiler(
Cantidad, 
IdElementoAlquiler, 
FechaFinalAlquiler, 
FechaInicialFacturacion, 
IdTarifaAlquiler, 
Total, 
Activo, 
IdUsuarioCrea, 
FechaCreacion, 
IdUsuarioModifica,
FechaModificacion
)
values(
p_Cantidad, 
p_IdElementoAlquiler, 
p_FechaFinalAlquiler, 
p_FechaInicialFacturacion, 
p_IdTarifaAlquiler, 
p_Total, 
1, 
p_IdUsuarioCrea, 
fechaActual, 
p_IdUsuarioCrea, 
fechaActual
);
END$$
DELIMITER ;