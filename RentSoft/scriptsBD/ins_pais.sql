DELIMITER $$
DROP PROCEDURE IF EXISTS ins_pais $$
CREATE PROCEDURE ins_pais
(in Nombre varchar(200), 
 in p_IdUsuarioCrea tinyint
)
BEGIN
declare fechaActual datetime;
set fechaActual = now();
insert into pais(
Nombre, 
Activo, 
Id_UsuarioCrea, 
FechaCreacion, 
IdUsuarioModifica, 
FechaModificacion
)
values(
p_Nombre,
1,
p_IdUsuarioCrea,
fechaActual,
p_IdUsuarioCrea,
fechaActual
);
END$$
DELIMITER ;