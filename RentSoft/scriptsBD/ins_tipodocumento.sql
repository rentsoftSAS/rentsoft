use rentsoftbd;
DELIMITER $$
DROP PROCEDURE IF EXISTS ins_tipodocumento $$
CREATE PROCEDURE ins_tipodocumento
(in p_Tipodocumento varchar(50),
in p_Descripcion varchar(100),
in  p_Id_UsuarioCrea int)
BEGIN
declare fechaActual datetime;
set fechaActual = now();

insert into tipodocumento
(Tipodocumento, 
Descripcion, 
Activo, 
IdUsuarioCrea, 
FechaCreacion, 
IdUsuarioModifica, 
FechaModificacion
) 
values
( p_Tipodocumento, 
p_Descripcion,
1, 
p_Id_UsuarioCrea, 
fechaActual, 
p_Id_UsuarioCrea, 
fechaActual);
END$$
DELIMITER ;