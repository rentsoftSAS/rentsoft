use rentsoftbd;
DELIMITER $$
DROP PROCEDURE IF EXISTS ins_elemento $$
CREATE PROCEDURE ins_elemento
(in p_Codigo varchar(100), 
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
in p_IdUsuarioCrea int )
BEGIN
declare fechaActual datetime;
set fechaActual = now();
insert into elemento
(Codigo, 
IdEstadoElemento, 
FechaCompra, 
IdAnexo, 
Horometro, 
Nombre, 
PrecioElemento, 
TarifaAlquiler, 
CodigoSerial, 
IdTipoElemento, 
IdTipoFacturacion, 
Activo, 
IdUsuarioCrea, 
FechaCreacion, 
IdUsuarioModifica, 
FechaModificacion )
 values
(p_Codigo, 
p_IdEstadoElemento, 
p_FechaCompra, 
p_IdAnexo, 
p_Horometro, 
p_Nombre, 
p_PrecioElemento, 
p_TarifaAlquiler, 
p_CodigoSerial, 
p_IdTipoElemento, 
p_IdTipoFacturacion,
1,  
p_IdUsuarioCrea, 
now(),  
p_IdUsuarioCrea,
now()) ;
END$$
DELIMITER ;