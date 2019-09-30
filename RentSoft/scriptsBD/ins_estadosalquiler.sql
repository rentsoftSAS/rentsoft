use rentsoftbd;
DELIMITER $$
DROP PROCEDURE IF EXISTS ins_estadosalquiler $$
CREATE PROCEDURE ins_estadosalquiler
(in p_Codigo varchar(100),
 in p_Descripcion varchar(5000), 
 in p_Estado varchar(500),
 in p_IdUsuarioCrea tinyint
)
BEGIN
declare fechaActual datetime;
set fechaActual = now();
insert into estadosalquiler(
Codigo, 
Descripcion, 
Estado, 
Activo, 
IdUsuarioCrea, 
FechaCreacion, 
IdUsuarioModifica, 
FechaModificacion
)
values(
p_Codigo, 
p_Descripcion, 
p_Estado, 
1, 
p_IdUsuarioCrea, 
fechaActual, 
p_IdUsuarioCrea, 
fechaActual
);
END$$
DELIMITER ;