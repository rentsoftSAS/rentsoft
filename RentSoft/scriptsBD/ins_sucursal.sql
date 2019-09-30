DELIMITER $$
DROP PROCEDURE IF EXISTS ins_sucursal $$
CREATE PROCEDURE ins_sucursal
(in Nombre varchar(200), 
in Direccion varchar(100), 
in IdCiudad int,
in p_IdUsuarioCrea tinyint
)
BEGIN
declare fechaActual datetime;
set fechaActual = now();
insert into sucursal(
Nombre, 
Direccion, 
IdCiudad, 
Activo, 
Id_UsuarioCrea, 
FechaCreacion, 
IdUsuarioModifica, 
FechaModificacion
)
values(
p_Nombre, 
p_Direccion, 
p_IdCiudad, 
1,
p_IdUsuarioCrea,
fechaActual,
p_IdUsuarioCrea,
fechaActual
);
END$$
DELIMITER ;