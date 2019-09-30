use rentsoftbd;
DELIMITER $$
DROP PROCEDURE IF EXISTS udp_usuario $$
CREATE PROCEDURE udp_usuario
(in p_id int,
in  p_Nombre varchar(200), 
in  p_Apellido varchar(200), 
in  p_clave varchar(2184),  
in  p_Usuario varchar(500), 
in  p_Pseudonimo varchar(500),  
in  p_Telefono varchar(200),  
in  p_Estado tinyint, 
in  p_Correo varchar(200),
in  p_IdRol int,
in  p_IdUsuarioModifica int)
BEGIN
declare fechaActual datetime;
set fechaActual = now();

update tipodocumento
set Nombre= case when p_Nombre is null then Nombre  else p_Nombre  end , 
Apellido= case when p_Apellido is null then Apellido  else p_Apellido  end , 
clave= case when p_clave is null then clave  else  p_clave end , 
Usuario= case when p_Usuario is null then  Usuario else  Usuario end , 
Pseudonimo= case when p_Pseudonimo is null then Pseudonimo  else p_Pseudonimo  end , 
Telefono= case when p_Telefono is null then Telefono  else  p_Telefono end , 
Estado= case when p_Estado is null then Estado  else  p_Estado end , 
Correo= case when p_Correo is null then Correo  else  p_Correo end , 
IdRol= case when p_IdRol is null then IdRol  else  p_IdRol end ,
IdUsuarioModifica=p_IdUsuarioModifica, 
FechaModificacion=fechaActual
where 
id = p_id;
END$$
DELIMITER ;