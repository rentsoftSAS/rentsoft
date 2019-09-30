DELIMITER $$
DROP PROCEDURE IF EXISTS udp_sucursal $$
CREATE PROCEDURE udp_sucursal
( in p_id int,
in Nombre varchar(200), 
in Direccion varchar(100), 
in IdCiudad int,
in p_IdUsuarioCrea tinyint
)
BEGIN
declare fechaActual datetime;
set fechaActual = now();
update  sucursal
set 
Nombre= case when  p_Nombre is null then Nombre else  p_Nombre end , 
Direccion= case when  p_Direccion is null then  Direccion else p_Direccion end , 
IdCiudad= case when  p_IdCiudad is null  then  IdCiudad else p_IdCiudad end , 
IdUsuarioModifica=p_IdUsuarioCrea, 
FechaModificacion=fechaActual
where id=p_id;
END$$
DELIMITER ;