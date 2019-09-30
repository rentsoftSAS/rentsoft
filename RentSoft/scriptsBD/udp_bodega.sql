use rentsoftbd;
DELIMITER $$
DROP PROCEDURE IF EXISTS udp_bodega $$
CREATE PROCEDURE udp_bodega
(in p_id int ,
in p_Nombre varchar(200),
in p_Cantidad int , 
in p_IdElemento int , 
in p_IdSucursal int,
in p_IdUsuarioCrea int )
BEGIN
declare fechaActual datetime;
set fechaActual = now();

update bodega
set 
Nombre = case when p_Nombre is null then Nombre else p_Nombre end, 
Cantidad = case when p_Cantidad is null then Cantidad else p_Cantidad end, 
IdElemento = case when p_IdElemento is null then IdElemento else p_IdElemento end, 
IdSucursal = case when p_IdSucursal is null then IdSucursal else p_IdSucursal end, 
IdUsuarioModifica=p_IdUsuarioCrea, 
FechaModificacion=fechaActual
where id=p_id;
END$$
DELIMITER ;