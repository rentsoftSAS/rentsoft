use rentsoftbd;
DELIMITER $$
DROP PROCEDURE IF EXISTS ins_estadoselemento $$
CREATE PROCEDURE ins_estadoselemento
(in p_Estado varchar(200), 
 in p_Descripcion varchar(1000),
 in p_IdUsuarioCrea tinyint
)
BEGIN
declare fechaActual datetime;
set fechaActual = now();
insert into estadosalquiler(
Estado, 
Descripcion, 
Activo, 
IdUsuarioCrea, 
FechaCreacion, 
IdUsuarioModifica, 
FechaModificacion
)
values(
p_Estado, 
p_Descripcion, 
1, 
p_IdUsuarioCrea, 
fechaActual, 
p_IdUsuarioCrea, 
fechaActual
);
END$$
DELIMITER ;