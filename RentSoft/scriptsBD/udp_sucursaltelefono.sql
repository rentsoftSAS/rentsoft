use rentsoftbd;
DELIMITER $$
DROP PROCEDURE IF EXISTS udp_sucursaltelefono $$
CREATE PROCEDURE udp_sucursaltelefono
(in p_id int,
in IdSucursal int , 
in Telefono varchar(100) ,
in  p_IdUsuarioModifica int)
BEGIN
declare fechaActual datetime;
set fechaActual = now();

update sucursaltelefono
set 
IdSucursal= case when p_IdSucursal is null  then IdSucursal else  p_IdSucursal end , 
Telefono= case when p_Telefono is null  then Telefono  else p_Telefono end , 
IdUsuarioModifica=p_IdUsuarioModifica, 
FechaModificacion=fechaActual
where id=p_id;
END$$
DELIMITER ;