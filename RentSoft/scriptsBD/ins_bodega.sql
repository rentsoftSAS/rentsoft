use rentsoftbd;
DELIMITER $$
DROP PROCEDURE IF EXISTS ins_bodega $$
CREATE PROCEDURE ins_bodega
(in p_Nombre varchar(200),
in p_Cantidad int , 
in p_IdElemento int , 
in p_IdSucursal int,
in p_IdUsuarioCrea int )
BEGIN
declare fechaActual datetime;
set fechaActual = now();

insert into bodega
(Nombre, 
Cantidad, 
IdElemento, 
IdSucursal, 
Activo, 
IdUsuarioCrea, 
FechaCreacion, 
IdUsuarioModifica, 
FechaModificacion)
values
(p_Nombre, 
p_Cantidad, 
p_IdElemento, 
p_IdSucursal, 
1, 
p_IdUsuarioCrea, 
fechaActual, 
p_IdUsuarioCrea, 
fechaActual);
END$$
DELIMITER ;