DELIMITER $$
DROP PROCEDURE IF EXISTS ins_rol $$
CREATE PROCEDURE ins_rol
(in p_Rol varchar(200), 
 in p_IdUsuarioCrea tinyint
)
BEGIN
declare fechaActual datetime;
set fechaActual = now();
insert into rol(
Rol, 
Activo, 
Id_UsuarioCrea, 
FechaCreacion, 
IdUsuarioModifica, 
FechaModificacion
)
values(
p_Rol,
1,
p_IdUsuarioCrea,
fechaActual,
p_IdUsuarioCrea,
fechaActual
);
END$$
DELIMITER ;