use rentsoftbd;
DELIMITER $$
DROP PROCEDURE IF EXISTS udp_cliente $$
CREATE PROCEDURE udp_cliente
(in p_id int,
in  p_Documento varchar(50), 
in  p_Nombre varchar(200), 
in  p_Direccion varchar(200),
in  p_Apellido varchar(200),
in  p_Correo varchar(200),
in  p_idTipoDocumento int, 
in  p_IdUsuarioModifica int)
BEGIN
declare fechaActual datetime;
set fechaActual = now();

update cliente
set Documento= case when p_Documento is null then Documento else p_Documento end, 
Nombre= case when p_Nombre is null then Nombre else p_Nombre end, 
Apellido= case when p_Apellido is null then Apellido else p_Apellido end, 
Direccion= case when p_Direccion is null then Direccion else p_Direccion end, 
Correo= case when p_Correo is null then Correo else p_Correo end,  
idTipoDocumento= case when p_idTipoDocumento is null then idTipoDocumento else p_idTipoDocumento end,  
IdUsuarioModifica=p_IdUsuarioModifica, 
FechaModificacion=fechaActual
where 
id=p_id;
END$$
DELIMITER ;