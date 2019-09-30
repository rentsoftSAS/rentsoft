use rentsoftbd;
DELIMITER $$
DROP PROCEDURE IF EXISTS ins_tiposfacturacion $$
CREATE PROCEDURE ins_tiposfacturacion
(in p_TipoFacturacion varchar(200),
in p_Descripcion varchar(1000),
in  p_Id_UsuarioCrea int)
BEGIN
declare fechaActual datetime;
set fechaActual = now();

insert into tiposfacturacion
(TipoFacturacion,
 Descripcion,
Activo, 
IdUsuarioCrea, 
FechaCreacion, 
IdUsuarioModifica, 
FechaModificacion
) 
values
( p_TipoFacturacion,
 p_Descripcion,
1, 
p_Id_UsuarioCrea, 
fechaActual, 
p_Id_UsuarioCrea, 
fechaActual);
END$$
DELIMITER ;